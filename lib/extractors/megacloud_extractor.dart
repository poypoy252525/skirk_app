import 'dart:convert';

class MegacloudExtractor {
  // ignore: non_constant_identifier_names
  final DEFAULT_CHARSET = List<String>.generate(
    95,
    (i) => String.fromCharCode(i + 32),
  );

  String _deriveKey(String secret, String nonce) {
    final input = secret + nonce;
    BigInt hash = BigInt.zero;

    for (int i = 0; i < input.length; i++) {
      hash += hash * BigInt.from(173) + BigInt.from(input.codeUnitAt(i));
    }

    final modHash = hash % BigInt.parse('9223372036854775807');

    final xorProcessed = input
        .split('')
        .map(
          (char) => String.fromCharCode(char.codeUnitAt(0) ^ (15835827 & 0xff)),
        )
        .join('');

    final shift = (modHash.toDouble() % xorProcessed.length).toInt() + 7;

    final rotated =
        xorProcessed.substring(shift) + xorProcessed.substring(0, shift);

    final reversedNonce = nonce.split('').reversed.join('');

    String interleaved = '';
    final maxLen = rotated.length > reversedNonce.length
        ? rotated.length
        : reversedNonce.length;

    for (int i = 0; i < maxLen; i++) {
      interleaved += (i < rotated.length ? rotated[i] : '');
      interleaved += (i < reversedNonce.length ? reversedNonce[i] : '');
    }

    final len = 96 + (modHash.toDouble() % 33).toInt();

    final sliced = interleaved.substring(0, len);

    return sliced
        .split('')
        .map((ch) => String.fromCharCode((ch.codeUnitAt(0) % 95) + 32))
        .join('');
  }

  String _columnarTranspositionCipher(String text, String key) {
    final cols = key.length;
    final rows = (text.length / cols).ceil();

    final grid = List.generate(
      rows,
      (_) => List.filled(cols, '', growable: false),
    );

    //

    final columnOrder = key
        .trim()
        .split('')
        .asMap()
        .entries
        .map((e) => {'char': e.value, 'idx': e.key})
        .toList();

    columnOrder.sort((a, b) {
      final charCmp = (a['char']! as String)
          .codeUnitAt(0)
          .compareTo((b['char']! as String).codeUnitAt(0));
      if (charCmp != 0) return charCmp;
      return (a['idx']! as int).compareTo(b['idx']! as int);
    });

    int i = 0;
    for (var entry in columnOrder) {
      int idx = entry['idx'] as int;
      for (int row = 0; row < rows; row++) {
        grid[row][idx] = i < text.length ? text[i++] : '';
      }
    }

    return grid.expand((row) => row).join('');
  }

  List<String> _deterministicUnshuffle(List<String> charset, String key) {
    BigInt seed = key.runes.fold<BigInt>(
      BigInt.zero,
      (acc, char) =>
          (acc * BigInt.from(31) + BigInt.from(char)) & BigInt.from(0xffffffff),
    );

    int random(int limit) {
      seed =
          (seed * BigInt.from(1103515245) + BigInt.from(12345)) &
          BigInt.from(0x7fffffff);
      return (seed % BigInt.from(limit)).toInt();
    }

    final result = List<String>.from(charset);
    for (int i = result.length - 1; i > 0; i--) {
      final j = random(i + 1);
      final tmp = result[i];
      result[i] = result[j];
      result[j] = tmp;
    }

    return result;
  }

  String decrypt(
    String secret,
    String nonce,
    String encrypted, [
    int rounds = 3,
  ]) {
    String data = utf8.decode(base64.decode(encrypted));

    final keyphrase = _deriveKey(secret, nonce);

    for (int round = rounds; round >= 1; round--) {
      final passphrase = keyphrase + round.toString();

      BigInt seed = passphrase.runes.fold<BigInt>(
        BigInt.zero,
        (acc, char) =>
            (acc * BigInt.from(31) + BigInt.from(char)) &
            BigInt.from(0xffffffff),
      );

      int random(int limit) {
        seed =
            (seed * BigInt.from(1103515245) + BigInt.from(12345)) &
            BigInt.from(0x7fffffff);
        return (seed % BigInt.from(limit)).toInt();
      }

      //

      data = data
          .split('')
          .map((char) {
            final idx = DEFAULT_CHARSET.indexOf(char);

            if (idx == -1) return char;
            final offset = random(95);
            final result = DEFAULT_CHARSET[(idx - offset + 95) % 95];
            return result;
          })
          .join('');

      data = _columnarTranspositionCipher(data, passphrase);

      final shuffled = _deterministicUnshuffle(DEFAULT_CHARSET, passphrase);
      final mapping = <String, String>{};
      for (int i = 0; i < shuffled.length; i++) {
        mapping[shuffled[i]] = DEFAULT_CHARSET[i];
      }

      data = data.split('').map((char) => mapping[char] ?? char).join('');
    }

    final lengthStr = data.substring(0, 4);
    final length = int.tryParse(lengthStr);
    if (length == null || length <= 0 || length > data.length - 4) {
      return data;
    }

    return data.substring(4, 4 + length);
  }
}

// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';

class MegacloudExtractor {
  final String _decodeUrl =
      'https://script.google.com/macros/s/AKfycbxHbYHbrGMXYD2-bC-C43D3njIbU-wGiYQuJL61H4vyy6YVXkybMNNEPJNPPuZrD1gRVA/exec';
  final Client _client;

  MegacloudExtractor(this._client);

  Future<String> _fallBackDecrypt({
    required String key,
    required String nonce,
    required String encryptedData,
  }) async {
    final response = await _client.get(
      Uri.parse(
        '$_decodeUrl?encrypted_data=$encryptedData&secret=$key&nonce=$nonce',
      ),
    );

    final decryptedStr = response.body;

    final cleaned = RegExp(r'(\[.*?\])').firstMatch(decryptedStr)?.group(1);

    if (cleaned == null) {
      throw Exception('failed to decrypt');
    }

    return cleaned;
  }

  final List<String> charset = List.generate(
    95,
    (i) => String.fromCharCode(i + 32),
  );

  String columnarTranspositionCipher(String P7, String p4) {
    final T1 = p4.length;
    final x2 = (P7.length / T1).ceil();
    final B7 = List.generate(x2, (_) => List.filled(T1, ''));

    final B$ = p4.split('').asMap().entries.map((e) {
      return {'char': e.value, 'idx': e.key};
    }).toList();

    final a_ = [...B$]
      ..sort((I_, t_) {
        final charDiff =
            (I_['char'] as String).codeUnitAt(0) -
            (t_['char'] as String).codeUnitAt(0);
        if (charDiff != 0) return charDiff;

        // If chars are the same, compare idx ascending
        return (I_['idx'] as int) - (t_['idx'] as int);
      });

    var m5 = 0;
    for (var obj in a_) {
      final F3 = obj['idx'] as int;
      for (var k3 = 0; k3 < x2; k3++) {
        B7[k3][F3] = (m5 < P7.length) ? P7[m5++] : '';
      }
    }

    final buffer = StringBuffer();
    for (var H9 = 0; H9 < x2; H9++) {
      for (var D2 = 0; D2 < T1; D2++) {
        buffer.write(B7[H9][D2]);
      }
    }
    return buffer.toString();
  }

  List<String> deterministicShuffle(List<String> y_, String H$) {
    BigInt a$ = BigInt.zero;
    for (var R9 = 0; R9 < H$.length; R9++) {
      a$ =
          (a$ * BigInt.from(31) + BigInt.from(H$.codeUnitAt(R9))) &
          BigInt.from(0xFFFFFFFF);
    }

    var A5 = a$;

    int K3(int N1) {
      A5 =
          (A5 * BigInt.from(1103515245) + BigInt.from(12345)) &
          BigInt.from(0x7FFFFFFF);
      return (A5 % BigInt.from(N1)).toInt();
    }

    final c2 = [...y_];

    for (var R5 = c2.length - 1; R5 > 0; R5--) {
      final d7 = K3(R5 + 1);
      final tmp = c2[R5];
      c2[R5] = c2[d7];
      c2[d7] = tmp;
    }

    return c2;
  }

  String generateKey(String secret, String nonce) {
    var U6 = secret + nonce;
    var h1 = BigInt.zero;
    final e6 = BigInt.from(31);

    for (var B4 = 0; B4 < U6.length; B4++) {
      final T3 = BigInt.from(U6.codeUnitAt(B4));
      h1 = T3 + h1 * e6 + (h1 << 7) - h1;
    }
    var L_ = h1.isNegative ? -h1 : h1;
    final N7 = (L_.remainder(BigInt.parse('0x7FFFFFFFFFFFFFFF'))).toInt();

    final x0 = <String>[];
    for (var v_ = 0; v_ < U6.length; v_++) {
      x0.add(String.fromCharCode(U6.codeUnitAt(v_) ^ (13886967 & 0xFF)));
    }
    U6 = x0.join('');

    print(L_);

    const C0 = 5;
    final p9 = (N7 % U6.length) + C0;
    U6 = U6.substring(p9) + U6.substring(0, p9);

    final y8 = nonce.split('').reversed.join('');
    final buffer = StringBuffer();
    for (var o4 = 0; o4 < max(U6.length, y8.length); o4++) {
      buffer.write(o4 < U6.length ? U6[o4] : '');
      buffer.write(o4 < y8.length ? y8[o4] : '');
    }
    var S1 = buffer.toString();

    final u6 = 96 + (N7 % 33) + 1;

    var G9 = S1.substring(0, u6);
    G9 = G9
        .split('')
        .map((y4) => String.fromCharCode(((y4.codeUnitAt(0) % 95) + 32)))
        .join('');

    return G9;
  }

  String _decrypt(
    String encryptedData,
    String secret,
    String nonce, {
    int iterations = 3,
  }) {
    final secretKey = generateKey(secret, nonce);
    var decoded = utf8.decode(base64.decode(encryptedData));

    void decryptFlow(int round) {
      BigInt rngState = BigInt.zero;
      var output = decoded;
      final key = secretKey + round.toString();

      int rng(int modulo) {
        rngState =
            (rngState * BigInt.from(1103515245) + BigInt.from(12345)) &
            BigInt.from(0x7FFFFFFF);
        return (rngState % BigInt.from(modulo)).toInt();
      }

      for (var i = 0; i < key.length; i++) {
        rngState =
            (rngState * BigInt.from(31) + BigInt.from(key.codeUnitAt(i))) &
            BigInt.from(0xFFFFFFFF);
      }

      output = output
          .split('')
          .map((char) {
            final charIndex = charset.indexOf(char);
            if (charIndex == -1) return char;
            final rand = rng(95);
            final decodedIndex =
                ((charIndex - rand) % 95 + 95) % 95; // JS modulo
            return charset[decodedIndex];
          })
          .join('');

      output = columnarTranspositionCipher(output, key);

      final shuffled = deterministicShuffle(charset, key);

      final mapping = <String, String>{};
      for (var idx = 0; idx < shuffled.length; idx++) {
        mapping[shuffled[idx]] = charset[idx];
      }
      output = output.split('').map((c) => mapping[c] ?? c).join('');

      decoded = output;
    }

    for (var round = iterations; round >= 1; round--) {
      decryptFlow(round);
    }

    final regex = RegExp(r'\[.*?\]');

    decoded = regex.firstMatch(decoded)?.group(0) ?? decoded;

    return decoded;
  }

  Future<String> decrypt(
    String encryptedData,
    String secret,
    String nonce, {
    int iterations = 3,
  }) async {
    // return await _fallBackDecrypt(
    //   key: secret,
    //   nonce: nonce,
    //   encryptedData: encryptedData,
    // );
    return _decrypt(encryptedData, secret, nonce, iterations: iterations);
  }
}

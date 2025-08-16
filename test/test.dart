// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:http/http.dart';
import 'package:skirk_app/extractors/megacloud_extractor.dart';
import 'dart:convert';

String jsNumberStringFromBigInt(BigInt value) {
  final modValue = value % BigInt.parse('0x7FFFFFFFFFFFFFFF');
  final asDouble = modValue.toDouble(); // mimics JS Number()
  return asDouble.toStringAsPrecision(17); // JS uses ~17 significant digits
}

void main() async {
  final client = Client();
  const encryptedData =
      "ND0yMDI0MyQ3X3NSaSd5VlUuKzR9YSk+WV5gTi5ZZSljNHtpXFM6cClOJi9lWEBhRWZnSEtzbkJQeEhiJXZoXmgyWDJeUkluMmhceUVrXyhja01kJG82OjcsOVFYKCFyQi8+VS12P35MdCFnelt8fl40PldsJUx6cjRoeDUyWVh6cT9VVyNsR21uS3lgNXohNSBZS3JtIUY1OENIIUxeeGItWz5WXG5iV0tBRHVRa1FabiF+Mml7dHokTlRDd0InYUlDYDNRM0tMbCk0KVYhczZLL3E6QThkVit+MSQ8K1hWTl18LUx5JFh8eDtbOi9bU2RXMktGOExAKyhSIHFXMD90PWwzMXpYIGE6OUtYJjEkXmonYUxiaE9vOms+dCdOTWNfNmYnVzA/ZDFYRE5JVHs/KnE1fFkobUpWKiFXQEhifmxqfE5TO2lidHo1SVpTa3U8J2RAUnZ6aig7PFEzN3lFem85W0NvIClLPzUsSzZhRkJ2NkU8SjJkJl5PSkwsWW1hbHB0cVh6ZmRA";
  const nonce1 = "9R4aU9wbvVP9MgdnJiG7OIei0J3Ws4ZhmK00APUs6mpqTO0Y";
  const secret1 = "nTAygRRNLS3wo82OtMyfPrWgD9K2UIvcwlj";

  final megacloud = MegacloudExtractor(client);

  try {
    final decrypted = await megacloud.decrypt(
      encryptedData,
      Uri.encodeComponent(secret1),
      Uri.encodeComponent(nonce1),
      iterations: 1,
    );
    // print(decrypted);
  } catch (e) {
    print(e);
  }

  client.close();
}

final List<String> charset = List.generate(
  95,
  (i) => String.fromCharCode(i + 32),
);

String columnarTranspositionCipher(String P7, String p4) {
  int T1 = p4.length;
  int x2 = (P7.length / T1).ceil();
  List<List<String>> B7 = List.generate(x2, (_) => List.filled(T1, ''));
  List<Map<String, dynamic>> B$ = p4.split('').asMap().entries.map((e) {
    return {'char': e.value, 'idx': e.key};
  }).toList();

  List<Map<String, dynamic>> a_ = [...B$]
    ..sort(
      (I_, t_) =>
          (I_['char'] as String).codeUnitAt(0) -
          (t_['char'] as String).codeUnitAt(0),
    );

  int m5 = 0;
  for (var obj in a_) {
    int F3 = obj['idx'] as int;
    for (int k3 = 0; k3 < x2; k3++) {
      B7[k3][F3] = (m5 < P7.length) ? P7[m5++] : '';
    }
  }

  String f5 = '';
  for (int H9 = 0; H9 < x2; H9++) {
    for (int D2 = 0; D2 < T1; D2++) {
      f5 += B7[H9][D2];
    }
  }
  return f5;
}

List<String> deterministicShuffle(List<String> y_, String H$) {
  BigInt a$ = BigInt.zero;
  for (int R9 = 0; R9 < H$.length; R9++) {
    a$ =
        (a$ * BigInt.from(31) + BigInt.from(H$.codeUnitAt(R9))) &
        BigInt.from(0xFFFFFFFF);
  }
  BigInt A5 = a$;

  int K3(int N1) {
    A5 =
        (A5 * BigInt.from(1103515245) + BigInt.from(12345)) &
        BigInt.from(0x7FFFFFFF);
    return (A5 % BigInt.from(N1)).toInt();
  }

  List<String> c2 = [...y_];
  for (int R5 = c2.length - 1; R5 > 0; R5--) {
    int d7 = K3(R5 + 1);
    String tmp = c2[R5];
    c2[R5] = c2[d7];
    c2[d7] = tmp;
  }
  return c2;
}

String generateKey(String secret, String nonce) {
  String U6 = secret + nonce;
  BigInt h1 = BigInt.zero;
  BigInt e6 = BigInt.from(31);
  for (int B4 = 0; B4 < U6.length; B4++) {
    BigInt T3 = BigInt.from(U6.codeUnitAt(B4));
    h1 = T3 + h1 * e6 + (h1 << 7) - h1;
  }
  BigInt L_ = h1.isNegative ? -h1 : h1;
  int N7 = (L_ % BigInt.parse('0x7FFFFFFFFFFFFFFF')).toInt();
  List<String> x0 = [];
  for (int v_ = 0; v_ < U6.length; v_++) {
    x0.add(String.fromCharCode(U6.codeUnitAt(v_) ^ (13886967 & 0xFF)));
  }
  U6 = x0.join('');
  int C0 = 5;
  int p9 = (N7 % U6.length) + C0;
  U6 = U6.substring(p9) + U6.substring(0, p9);
  String y8 = nonce.split('').reversed.join('');
  String S1 = '';
  for (int o4 = 0; o4 < (U6.length > y8.length ? U6.length : y8.length); o4++) {
    S1 += (o4 < U6.length ? U6[o4] : '') + (o4 < y8.length ? y8[o4] : '');
  }
  int u6 = 96 + (N7 % 33);
  String G9 = S1.substring(0, u6);
  G9 = G9
      .split('')
      .map((y4) => String.fromCharCode(((y4.codeUnitAt(0) % 95) + 32)))
      .join('');
  return G9;
}

String decrypt(
  String encrypted_data,
  String secret,
  String nonce, [
  int iterations = 3,
]) {
  String secretKey = generateKey(secret, nonce);
  String decoded = utf8.decode(base64.decode(encrypted_data));

  print(secretKey);

  void decryptFlow(int round) {
    BigInt rngState = BigInt.zero;
    String output = decoded;
    String key = secretKey + round.toString();

    int rng(int modulo) {
      rngState =
          (rngState * BigInt.from(1103515245) + BigInt.from(12345)) &
          BigInt.from(0x7FFFFFFF);
      return (rngState % BigInt.from(modulo)).toInt();
    }

    for (int i = 0; i < key.length; i++) {
      rngState =
          (rngState * BigInt.from(31) + BigInt.from(key.codeUnitAt(i))) &
          BigInt.from(0xFFFFFFFF);
    }

    output = output
        .split('')
        .map((char) {
          int charIndex = charset.indexOf(char);
          if (charIndex == -1) return char;
          int rand = rng(95);
          int decodedIndex = ((charIndex - rand + 95) % 95);
          return charset[decodedIndex];
        })
        .join('');
    output = columnarTranspositionCipher(output, key);
    List<String> shuffled = deterministicShuffle(charset, key);
    Map<String, String> mapping = {};
    for (int idx = 0; idx < shuffled.length; idx++) {
      mapping[shuffled[idx]] = charset[idx];
    }
    output = output.split('').map((c) => mapping[c] ?? c).join('');

    decoded = output;
  }

  for (int round = iterations; round >= 1; round--) {
    decryptFlow(round);
  }

  return decoded;
}

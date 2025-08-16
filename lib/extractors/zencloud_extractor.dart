import 'package:encrypt/encrypt.dart';

class ZencloudExtractor {
  String extract({
    required String encodedBase64,
    required String key,
    required String iv,
  }) {
    final k = Key.fromBase64(key);
    final i = IV.fromBase64(iv);

    final encrypter = Encrypter(AES(k, mode: AESMode.cbc));

    final decrypted = encrypter.decrypt(
      Encrypted.fromBase64(encodedBase64),
      iv: i,
    );

    return decrypted;
  }
}

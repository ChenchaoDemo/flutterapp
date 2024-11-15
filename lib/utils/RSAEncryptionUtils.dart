import 'dart:convert';
import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:pointycastle/asymmetric/api.dart';

class RSAEncryptionUtils {
  // 公钥Base64编码
  static String publicKeyBase64="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDK4b3DKtM26QeA++8vElist/F3Nc1+cDnJwk1LJGLmssjzLTaSA2HGHyyQdGQz8J8+KUJDN0SMPUVyy8bTH5FzSfGvKbVG4/wg3CWDqx09uP4KL8TBBnrcnjWdnYmftJGp3xDbCoSxNzCnxhvn/G/0LIYlGt0lyhOKnLjyPFoQsQIDAQAB";
  static String privateKeyBase64="MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBAKP3gJdGA7kJIV5t48vx32tox6LsvcLz5jIPj3jTYmJSC+FgqTUCKdAeTPgzStMiiO7z0Rdymyz33+ijGsYhM/WS9ivdH4mgWlnXAIIepN50svqm7va0lhvUwwxe5gi1kla+fAhhPjW0tCWBG7oEYZRHopkbOqBbHXthLWB3fBVbAgMBAAECgYEAju7wr+4ezKyC5DhTPbPpmU5LyWEqwsmuv7EE1sUenKr9JEkI9+ac4ImpeyvrbEZMrFDq0s/bKcYi8D9O1ayYB3PaAV/grYhx/vkgN5nCnf7t7jwefcroBkA2X3On4F8fO60w0xr5VUb2VrHRtAoMgbFXxETCILudtMWFDVyuXOECQQDUSh0/U9qMYyEa+0cZPgDi5X9ynU9jZT+OTjgUfEuSODKKwL9Riw+kQJRGjSKY61GcV94VZ0BYtcTjhKX6tQOZAkEAxbpGOenqWQUpAEdd8jjdVGCYtQTr01RBVrzQTW1i4I0PXQ2ePLtiN0tmrScLg8zjcHxPZ44AmdWYKrdngBX5EwJBAMW1sL+F7QjKWc6zL2hG4rRuYN/xujor1aFHH9uUVx160TeAg64CATNMIcwDLbGVl5AwFVmBq9/yicgLhjmT1CECQQCuCzv7iEnul9syUp+AMcuolOp2FGHcgAKPbd3Q+aMaUzAd0XnirXJTh7xWV9ML7dKZVeKzHUysHFY3635gQXcfAkEAmHlFwei9SFINPfwiSlFW/Xs3+5kaSznkppRUXopq48LxwwoCTNZFQmTXmOGTZHHxckrWXlllYUfTzqTWzTKbFQ==";

  ///  加密
  static encryption(content) async {
    final parser = RSAKeyParser();
    RSAPublicKey publicKey = parser.parse(publicKeyBase64) as RSAPublicKey;
    final encrypter = Encrypter(RSA(publicKey: publicKey));
    return encrypter.encrypt(content).base64;
  }
  /// 解密
  static Future<String> decrypt(String decoded) async {
    final parser = RSAKeyParser();
    final privateKey = parser.parse(privateKeyBase64) as RSAPrivateKey;
    final encrypter = Encrypter(RSA(privateKey: privateKey));
    return encrypter.decrypt(Encrypted.fromBase64(decoded));
  }
}

// void main() {
//   final rsaEncryption = RSAEncryption();
//   final encryptedPassword = rsaEncryption.encryptText("password123");
//   print("Encrypted password: $encryptedPassword");
// }

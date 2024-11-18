
import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:pointycastle/asn1/asn1_parser.dart';
import 'package:pointycastle/asn1/primitives/asn1_integer.dart';
import 'package:pointycastle/asn1/primitives/asn1_sequence.dart';
import 'package:pointycastle/export.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class RSAEncryptionUtils {
  /// URL 安全的 Base64 编码
  static String _toUrlSafeBase64(String base64String) {
    return base64String.replaceAll('+', '-').replaceAll('/', '_').replaceAll('=', '');
  }
  /// URL 安全的 Base64 解码
  static String _fromUrlSafeBase64(String urlSafeBase64) {
    String base64String = urlSafeBase64.replaceAll('-', '+').replaceAll('_', '/');
    // 补齐缺失的 `=`，确保长度为 4 的倍数
    while (base64String.length % 4 != 0) {
      base64String += '=';
    }
    return base64String;
  }
  //加密数据
  static Future<String> encodeString(String content) async {
    final publicPem = await rootBundle.loadString('key/public.pem');
    final publicKeyRSA = encrypt.RSAKeyParser().parse(publicPem) as RSAPublicKey; //将解析结果转换为 RSAPublicKey
    final encrypter = Encrypter(RSA(publicKey: publicKeyRSA));
    // 加密明文数据
    final encrypted = encrypter.encrypt(content);
    // 返回加密后的 Base64 编码字符串
    // 转换为 URL 安全的 Base64 编码
    return _toUrlSafeBase64(encrypted.base64);
  }


  static Future<String> decodeString(String content) async {
    final privatePem = await rootBundle.loadString('key/private.pem');
    final privateKeyRSA = encrypt.RSAKeyParser().parse(privatePem) as RSAPrivateKey; //将解析结果转换为 RSAPrivateKey
    final encrypter = Encrypter(RSA(privateKey: privateKeyRSA));
    //  URL 安全的 Base64 解码
    final encrypted = encrypt.Encrypted.fromBase64(_fromUrlSafeBase64(content));
    // 解密数据
    final decrypted = encrypter.decrypt(encrypted);
    return decrypted;
  }
}

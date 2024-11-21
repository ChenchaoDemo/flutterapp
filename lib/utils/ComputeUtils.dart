// 文件名: ComputeUtils
// 作者: A
// 创建日期: 2024-11-20
// 描述: 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComputeUtils {

  // 处理手机号，中间四位替换为XXXX
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 11) {
      return phoneNumber.substring(0, 3) + 'XXXX' + phoneNumber.substring(7, 11);
    }
    return phoneNumber; // 如果手机号不是11位，原样返回
  }
}
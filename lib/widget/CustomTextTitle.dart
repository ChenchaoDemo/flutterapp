
// 文件名: CustomTextTitle
// 作者: A
// 创建日期: 2024-11-21
// 描述: 作为共用的页面内容的标题

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  final String text;
  const CustomTextTitle({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 左侧带颜色的 View
        Container(
          width: 4,
          margin: EdgeInsets.only(right: 10),
          height: 18,
          color: Colors.blueAccent,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}


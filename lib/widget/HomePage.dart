

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../obj/FlowNodeType.dart';

class HomePage extends StatelessWidget {

  final List<SalesFlowNodeType> items = SalesFlowNodeType.getProcessNodes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 每行 3 列
            mainAxisSpacing: 8.0, // 垂直间距
            crossAxisSpacing: 8.0, // 水平间距
            childAspectRatio: 1.0, // 宽高比（1.0 表示宽和高相等）
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.white54,
              child: Column(
                mainAxisSize: MainAxisSize.min, // 确保列的高度根据内容调整
                children: [
                  IconButton(
                    icon:Image.asset(
                      items[index].icon, // 替换为你的图片路径
                      width: 50, // 设置图片宽度
                      height: 50, // 设置图片高度
                    ),
                    onPressed: () {
                      showSelect(items[index]);
                    },
                  ),
                  const SizedBox(height: 10), // 添加一些间距，调整图片和文字之间的距离
                  Text(
                    items[index].value,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void showSelect(SalesFlowNodeType item){
    Fluttertoast.showToast(
        msg: item.value,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0
    );
  }
}
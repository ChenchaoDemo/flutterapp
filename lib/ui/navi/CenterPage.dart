
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/ui/DataStatisticsPage.dart';
import 'package:flutterapp/ui/HelpCenterPage.dart';
import 'package:flutterapp/ui/HistoryOutWarehouseReceiptPage.dart';
import 'package:flutterapp/ui/HistoryTradeReceiptPage.dart';
import 'package:flutterapp/ui/InventoryQueryPage.dart';
import 'package:flutterapp/ui/LogoutFlowCardPage.dart';
import 'package:flutterapp/ui/QuickRegistrationPage.dart';
import 'package:flutterapp/ui/ViewPlanPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../obj/FlowNodeType.dart';
import '../../utils/ToastUtils.dart';

class CenterPage extends StatelessWidget {

  final List<SalesFlowNodeType> items = SalesFlowNodeType.getCommonNodes();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 每行 3 列
            mainAxisSpacing: 8.0, // 垂直间距
            crossAxisSpacing: 8.0, // 水平间距
            childAspectRatio: 1.0, // 宽高比（1.0 表示宽和高相等）
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.white54,
              child: GestureDetector(
                onTap: () {
                  showSelect(items[index]);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min, // 确保列的高度根据内容调整
                  children: [
                    Image.asset(
                      items[index].icon, // 替换为你的图片路径
                      width: 40, // 设置图片宽度
                      height: 40, // 设置图片高度
                    ),
                    const SizedBox(height: 8), // 添加一些间距，调整图片和文字之间的距离
                    Text(
                      items[index].value,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void showSelect(SalesFlowNodeType item){
    switch(item.key){
      case "HISTORY_OUT_WAREHOUSE_RECEIPT":
        Get.to(HistoryOutWarehouseReceiptPage(),arguments:{'title': item.value,});
        break;
      case "HISTORY_TRADE_RECEIPT":
        Get.to(HistoryTradeReceiptPage(),arguments:{'title': item.value,});
        break;
      case "LOGOUT_FLOW_CARD":
        Get.to(LogoutFlowCardPage(),arguments:{'title': item.value,});
        break;
      case "INVENTORY_QUERY":
        Get.to(InventoryQueryPage(),arguments:{'title': item.value,});
        break;
      case "VIEW_PLAN":
        Get.to(ViewPlanPage(),arguments:{'title': item.value,});
        break;
      case "DATA_STATISTICS":
        _showCustomDialog(item.value);
        break;
      case "QUICK_REGISTRATION":
        Get.to(QuickRegistrationPage(),arguments:{'title': item.value,});
        break;
      case "HELP_CENTER":
        Get.to(HelpCenterPage(),arguments:{'title': item.value,});
        break;
    }
  }

  //自定义弹窗
  // 显示自定义弹窗
  void _showCustomDialog(String value) {
    Get.dialog(
      // 弹窗内容
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(
                AssetImage('assets/images/common_icon_shield.png'),
                size: 50,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text(
                '请输入授权码后访问此功能',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  keyboardType: TextInputType.number, // 数字键盘
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: '请输入授权码',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();  // 关闭弹窗
                      },
                      child: Text(
                          '取消',
                          style: TextStyle(
                              color: Colors.blueAccent
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if(controller.text.isEmpty){
                          ToastUtils.showBottom('请输入授权码');
                          return;
                        }else if(controller.text == '12345'){
                          Get.back();
                          Get.to(DataStatisticsPage(),arguments:{'title': value,});
                        }else{
                          ToastUtils.showBottom('授权码错误');
                        }
                      },
                      child: Text(
                          '确定',
                          style: TextStyle(
                            color: Colors.blueAccent
                          )
                      ),
                    ),
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
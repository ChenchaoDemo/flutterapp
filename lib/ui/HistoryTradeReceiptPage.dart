// 文件名: HistoryTradeReceiptPage
// 作者: A
// 创建日期: 2024-11-19
// 描述: 

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/net/HttpService.dart';
import 'package:get/get.dart';

import '../model/user_search_entitiy.dart';
import '../utils/ComputeUtils.dart';
import '../utils/ToastUtils.dart';
import '../widget/CustomAppBar.dart';
import 'UserHistoryTrade.dart';

class HistoryTradeReceiptPage extends StatefulWidget {
  const HistoryTradeReceiptPage({Key? key}) : super(key: key);

  @override
  _HistoryTradeReceiptPageState createState() => _HistoryTradeReceiptPageState();
}

class _HistoryTradeReceiptPageState extends State<HistoryTradeReceiptPage> {

  TextEditingController _controller = TextEditingController();
  List<UserSearchDataData> _listData = []; // 存储接口数据


  @override
  Widget build(BuildContext context) {
    final String message = Get.arguments['title'] ?? '';
    return Scaffold(
      appBar: CustomAppBar( title: message, onProfileTap: () {
        ToastUtils.showBottom("onProfileTap");
      }),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number, // 数字键盘
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: '请输入买家手机号',
                      border: OutlineInputBorder(),
                      suffixIcon: _controller.text.isNotEmpty
                          ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _controller.clear(); // 清空输入内容
                          setState(() {}); // 更新界面
                        },
                      ) : null,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _controller.text = value;
                      }); // 更新界面
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.blueAccent,
                  child: TextButton(
                    onPressed: (){
                      if(_controller.text.isEmpty){
                        ToastUtils.showBottom('请输入买家手机号');
                        return;
                      }else{
                        getUser(_controller.text);
                      }
                    },
                    child: Text('查询',style: TextStyle(color: Colors.white)),
                  )
                )
              ],
            ),
            SizedBox(height: 20),
            //下来刷新,上拉加载更多列表
            Expanded(
              child: ListView.builder(
                itemCount: _listData.length,
                itemBuilder: (context, index) {
                  final item=_listData[index];
                  return GestureDetector(
                    onTap: (){
                      Get.to(UserHistoryTrade(),arguments:{
                        'title': message,
                        'item': item,
                      });
                    },
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child:  Padding(
                            padding: const EdgeInsets.all(10), // 设置子项间距
                            child: Text(item.realName ?? ""),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10), // 设置子项间距
                            child: Text(ComputeUtils.formatPhoneNumber(item.phone ?? "")),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10), // 设置子项间距
                            child: Text(item.address ?? ""),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }

  Future<void> getUser(String phone) async {
    await HttpService().get('user/search',params: {
      'keyword': phone
    }).then((value) {
      UserSearchEntitiy item=UserSearchEntitiy.fromJson(jsonDecode(value));
      if(item.code==200) {
        setState(() {
          _listData.clear();
          item.data?.data!.forEach((element) {
            _listData.add(element);
          });
        });
        // ToastUtils.showBottom('查询成功');
      }
    });
  }
}

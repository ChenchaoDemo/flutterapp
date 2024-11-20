import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/generated/assets.dart';
import 'package:flutterapp/utils/HiveUtils.dart';

import '../../widget/CustomSwitch.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}
class _UserPageState extends State<UserPage> {
  bool _isSwitched = false; // 开关初始状态
  // 保存每个开关的状态
  Map<String, bool> switchStates = {
    'switch1': false,
    'switch2': false,
    'switch3': false,
    'switch4': false,
    'switch5': false,
  };

  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  String _printSize1 = '1';
  String _printSize2 = '1';


  @override
  void initState() {
    super.initState();
    _controller1.text = HiveUtils.getData('controller1') ?? '';
    _controller2.text = HiveUtils.getData('controller2') ?? '';
    _controller3.text = HiveUtils.getData('controller3') ?? '';
    switchStates['switch1'] = HiveUtils.getData('switch1') ?? false;
    switchStates['switch2'] = HiveUtils.getData('switch2') ?? false;
    switchStates['switch3'] = HiveUtils.getData('switch3') ?? false;
    switchStates['switch4'] = HiveUtils.getData('switch4') ?? false;
    switchStates['switch5'] = HiveUtils.getData('switch5') ?? false;
  }


  void _onSwitchChanged(String id, bool value) {
    setState(() {
      switchStates[id] = value; // 更新对应开关的状态
      HiveUtils.putData(id, value); // 存储开关状态
    });
  }
  void reduceSize(String type) {
    if(type == '1') {
      int number = int.tryParse(_printSize1) ?? 0; // 如果解析失败，默认为 0
      if(number > 1) {
        number--;
      }
      setState(() {
        _printSize1 = number.toString();
      });
      print(_printSize1);
    } else {
      int number = int.tryParse(_printSize2) ?? 0; // 如果解析失败，默认为 0
      if(number > 1) {
        number--;
      }
      setState(() {
        _printSize2 = number.toString();
      });
      print(_printSize2);
    }
  }
  void addSize(String type) {
    if(type == '1') {
      int number = int.tryParse(_printSize1) ?? 0; // 如果解析失败，默认为 0
      number++;
      setState(() {
        _printSize1 = number.toString();
      });
      print(_printSize1);
    } else {
      int number = int.tryParse(_printSize2) ?? 0; // 如果解析失败，默认为 0
      number++;
      setState(() {
        _printSize2 = number.toString();
      });
      print(_printSize2);
    }


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,// 垂直方向居中部对齐
          crossAxisAlignment: CrossAxisAlignment.start,// 水平方向靠左对齐
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(Assets.imagesHomeUserAvatar, width: 30, height: 30),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '基地编码基地名称',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text('合肥一村信息技术有限公司'),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Text('基础信息'),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text('打印出库单开关'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child:ImageIcon(
                          AssetImage(Assets.imagesCommonIconTipGray),
                          size: 20,
                          color: Colors.blue, // 设置前景色
                        ),
                      ),
                      Spacer(),
                      CustomSwitch(
                        id: 'switch1',
                        initialValue: switchStates['switch1']!,
                        onChanged: _onSwitchChanged,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Visibility(
                    visible: switchStates['switch1']!,
                    child: Row( // 根据开关状态显示或隐藏
                      children: [
                        Expanded(
                          child: Container(
                            child: Text('打印出库单份数'),
                          ),
                        ),
                        IconButton(
                          onPressed: () => reduceSize("1"),
                          icon: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.grey,
                              BlendMode.srcIn,
                            ),
                            child: Image.asset(
                              Assets.imagesIconCircleReduce,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                        Text(_printSize1),
                        IconButton(
                          onPressed: () => addSize("1"),
                          icon: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                            child: Image.asset(
                              Assets.imagesCommonIconCircleAdd,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: switchStates['switch1']!,
                    child: Divider(
                      color: Colors.grey[400], // 线条颜色
                      thickness: 1.0,     // 线条粗细
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('打印出库交易报告开关'),
                      ),
                      Spacer(),
                      CustomSwitch(
                        id: 'switch2',
                        initialValue: switchStates['switch2']!,
                        onChanged: _onSwitchChanged,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Visibility(
                    visible: switchStates['switch2']!,
                    child: Row( // 根据开关状态显示或隐藏
                      children: [
                        Expanded(
                          child: Container(
                            child: Text('打印出库交易报告份数'),
                          ),
                        ),
                        IconButton(
                          onPressed: () => reduceSize("2"),
                          icon: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.grey,
                              BlendMode.srcIn,
                            ),
                            child: Image.asset(
                              Assets.imagesIconCircleReduce,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                        Text(_printSize2),
                        IconButton(
                          onPressed: () => addSize("2"),
                          icon: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                            child: Image.asset(
                              Assets.imagesCommonIconCircleAdd,
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: switchStates['switch2']!,
                    child: Divider(
                      color: Colors.grey[400], // 线条颜色
                      thickness: 1.0,     // 线条粗细
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('制卡成功进入入磅环节'),
                      ),
                      Spacer(),
                      CustomSwitch(
                        id: 'switch3',
                        initialValue: switchStates['switch3']!,
                        onChanged: _onSwitchChanged,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('出磅成功进入商品选择环节'),
                      ),
                      Spacer(),
                      CustomSwitch(
                        id: 'switch4',
                        initialValue: switchStates['switch4']!,
                        onChanged: _onSwitchChanged,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('商品选择成功进入交易报告环节'),
                      ),
                      Spacer(),
                      CustomSwitch(
                        id: 'switch5',
                        initialValue: switchStates['switch5']!,
                        onChanged: _onSwitchChanged,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('本地摄像头配置'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: ListView.separated(
                shrinkWrap: true,  // 设置为 true，防止 ListView 占用无限空间
                physics: NeverScrollableScrollPhysics(),  // 防止 ListView 内部滚动
                itemCount: 5,  // 列表项数量
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    leading: Icon(Icons.access_alarm),
                    onTap: () {
                      print('Item $index clicked');
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();  // 在列表项之间添加分割线
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text('偏好配置'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '常用规格',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '用于成品出库时,快捷输入袋装成品的规格',
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Row(
                    children: [
                      Text('规格1'),
                      SizedBox(width: 10),
                      Expanded(// 让 TextField 占据剩余空间
                        child: TextField(
                          keyboardType: TextInputType.number, // 数字键盘
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly, // 限制输入为数字
                              LengthLimitingTextInputFormatter(2), // 限制最大输入长度为 2
                            ],
                          controller: _controller1, // 绑定 TextEditingController
                          decoration: InputDecoration(
                            hintText: '请输入规格（最大2位）', // 提示文本
                            border: InputBorder.none, // 移除边框
                          ),
                          onChanged: (text) {
                            HiveUtils.putData('controller1', text);
                          },
                        ),
                      ),
                      ImageIcon(
                        AssetImage(Assets.imagesCommonIconArrowRightGray),
                        size: 20,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Row(
                    children: [
                      Text('规格2'),
                      SizedBox(width: 10),
                      Expanded(// 让 TextField 占据剩余空间
                        child: TextField(
                          keyboardType: TextInputType.number, // 数字键盘
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly, // 限制输入为数字
                            LengthLimitingTextInputFormatter(2), // 限制最大输入长度为 2
                          ],
                          controller: _controller2, // 绑定 TextEditingController
                          decoration: InputDecoration(
                            hintText: '请输入规格（最大2位）', // 提示文本
                            border: InputBorder.none, // 移除边框
                          ),
                          onChanged: (text) {
                            HiveUtils.putData('controller2', text);
                          },
                        ),
                      ),
                      ImageIcon(
                        AssetImage(Assets.imagesCommonIconArrowRightGray),
                        size: 20,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[400], // 线条颜色
                    thickness: 1.0,     // 线条粗细
                  ),
                  Row(
                    children: [
                      Text('规格3'),
                      SizedBox(width: 10),
                      Expanded(// 让 TextField 占据剩余空间
                        child: TextField(
                          keyboardType: TextInputType.number, // 数字键盘
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly, // 限制输入为数字
                            LengthLimitingTextInputFormatter(2), // 限制最大输入长度为 2
                          ],
                          controller: _controller3, // 绑定 TextEditingController
                          decoration: InputDecoration(
                            hintText: '请输入规格（最大2位）', // 提示文本
                            border: InputBorder.none, // 移除边框
                          ),
                          onChanged: (text) {
                            HiveUtils.putData('controller3', text);
                          },
                        ),
                      ),
                      ImageIcon(
                        AssetImage(Assets.imagesCommonIconArrowRightGray),
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
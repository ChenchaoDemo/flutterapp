import 'package:flutter/material.dart';
import 'package:flutterapp/generated/assets.dart';
import 'package:flutterapp/utils/HiveUtils.dart';
import 'package:hive/hive.dart';

import '../widget/CenterPage.dart';
import '../widget/HomePage.dart';
import '../widget/UserPage.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}
class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;
  final GlobalKey _buttonKey = GlobalKey(); // 用于获取按钮的位置
  String _userName = 'XXX';
  String _barTitle = 'XXX';
  final List<Widget> _children = [
    HomePage(),
    CenterPage(),
    UserPage(),
  ];

  @override
  void initState() {
    super.initState();
    _userName = HiveUtils.getData('username') ?? 'XXX';
    _barTitle = '流程';
  }
  void updateBarTitle(String title) {
    setState(() {
      if(title=='0'){
        title = '流程';
      }else if(title=='1'){
        title = '常用';
      }else if(title=='2'){
        title = '设置';
      }
      _barTitle = title;
    });
  }
  // 底部导航栏点击事件
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      updateBarTitle(index.toString());
    });
  }
  void showUserOverlay(BuildContext context) {
    final overlay = Overlay.of(context);
    final renderBox = _buttonKey.currentContext!.findRenderObject() as RenderBox;
    final buttonPosition = renderBox.localToGlobal(Offset.zero); // 获取按钮的位置
    final buttonWidth = renderBox.size.width; // 获取按钮的宽度

    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: buttonPosition.dy + renderBox.size.height, // 设置弹出框的 top 值为按钮底部
        // left: buttonPosition.dx + buttonWidth / 2 - 30, // 居中对齐，50 为弹窗宽度的一半
        left: buttonPosition.dx, // 居中对齐，50 为弹窗宽度的一半
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(20), // 圆角半径
            ),
            child: Text(
              _userName,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
    // 插入 Overlay
    overlay.insert(overlayEntry);
    // 延迟关闭 Overlay
    Future.delayed(const Duration(seconds: 1), () {
      overlayEntry.remove(); // 移除 Overlay
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/common_icon_main_page.png',
              width: 30, // 设置图片宽度
              height: 30, // 设置图片高度
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(_barTitle ,style: TextStyle(color: Colors.white)),
            ),
            Spacer(), // 这个组件会占据尽可能多的空间   'assets/images/common_icon_head_portrait.png',
            IconButton(
              icon: Image.asset(
                  Assets.imagesCommonIconHeadPortrait,
                width: 30,
                height: 30,
              ),
              key: _buttonKey,
              onPressed: () {
                showUserOverlay(context);
                // 在这里执行你需要的操作
              },
            )
          ]
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '流程',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '常用',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '设置',
          ),
        ],
      ),
    );
  }
}
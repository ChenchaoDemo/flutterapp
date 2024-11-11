import 'package:flutter/material.dart';

import '../widget/CenterPage.dart';
import '../widget/HomePage.dart';
import '../widget/UserPage.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}
class _NavPageState extends State<NavPage> {

  int _currentIndex = 0;
  
  final List<Widget> _children = [
    HomePage(),
    CenterPage(),
    UserPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('导航栏'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '中心',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '个人',
          ),
        ],
      ),
    );
  }
}
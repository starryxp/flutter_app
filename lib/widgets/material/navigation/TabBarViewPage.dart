import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {

  final _tabList = [
    Tab(
      text: '首页',
      icon: Icon(Icons.home),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '邮件',
      icon: Icon(Icons.mail),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '消息',
      icon: Icon(Icons.message),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '我的',
      icon: Icon(Icons.people),
      iconMargin: EdgeInsets.all(5),
    ),
  ];

  @override
  State<StatefulWidget> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarViewPage'),
      ),
    );
  }
}

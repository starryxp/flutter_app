import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class HomePage extends StatefulWidget {
  final List<HomeData> homeDataList = [
    HomeData(title: 'Widgets目录', routerName: Constant.widgetsWidgetsListPage),
    HomeData(title: 'Cookbook'),
    HomeData(title: '示例目录'),
    HomeData(title: '构建布局 - 教程'),
    HomeData(title: '添加交互- 教程'),
  ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter实战教学'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        children: widget.homeDataList.map((HomeData homeData) {
          return HomeListItem(homeData: homeData);
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class MaterialListPage extends StatelessWidget {
  final dataList = [
    HomeData(
        title: 'App结构和导航',
        content: '',
        routerName: Constant.widgetsMaterialNavigationNavigationListPage),
    HomeData(title: '按钮', content: '', routerName: ''),
    HomeData(title: '输入框和选择框', content: '', routerName: ''),
    HomeData(title: '对话框、Alert、Panel', content: '', routerName: ''),
    HomeData(title: '信息展示', content: '', routerName: ''),
    HomeData(title: '布局', content: '', routerName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Widgets')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

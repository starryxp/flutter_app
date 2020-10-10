import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class LayoutWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'Container',
        content: '一个拥有绘制、定位、调整大小的 widget。',
        routerName: Constant.widgetsLayoutContainerPage),
  ];

  @override
  State<StatefulWidget> createState() => _LayoutWidgetListPageState();
}

class _LayoutWidgetListPageState extends State<LayoutWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutWidgetList'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class ScrollWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'GridView',
        content: '一个可滚动的二维空间数组',
        routerName: RouterConstant.widgetsScrollGridViewPage),
    HomeData(
        title: 'SingleChildScrollView',
        content: '有一个子widget的可滚动的widget，子内容超过父容器时可以滚动。',
        routerName: RouterConstant.widgetsScrollSingleChildScrollViewPage),
    HomeData(
        title: 'NestedScrollView',
        content: '一个可以嵌套其它可滚动widget的widget',
        routerName: RouterConstant.widgetsScrollNestedScrollViewPage),
  ];

  @override
  State<StatefulWidget> createState() => _ScrollWidgetListPageState();
}

class _ScrollWidgetListPageState extends State<ScrollWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'CustomScrollView',
        content: '一个使用slivers创建自定义的滚动效果的ScrollView',
        routerName: RouterConstant.widgetsSliverCustomScrollViewPage),
    HomeData(
        title: 'SliverAppBar',
        content: '支持滚动折叠效果的AppBar',
        routerName: RouterConstant.widgetsSliverSliverAppBarPage),
    HomeData(
        title: 'SliverList',
        content: '',
        routerName: RouterConstant.widgetsSliverSliverListPage),
    HomeData(
        title: 'SliverGridPage',
        content: '',
        routerName: RouterConstant.widgetsSliverSliverGridPage),
  ];

  @override
  State<StatefulWidget> createState() => _SliverWidgetListPageState();
}

class _SliverWidgetListPageState extends State<SliverWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}
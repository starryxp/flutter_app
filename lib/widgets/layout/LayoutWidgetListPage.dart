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
    HomeData(
        title: 'Padding',
        content: '一个widget, 会给其子widget添加指定的填充',
        routerName: Constant.widgetsLayoutPaddingPage),
    HomeData(
        title: 'Center',
        content: '将其子widget居中显示在自身内部的widget',
        routerName: Constant.widgetsLayoutCenterPage),
    HomeData(
        title: 'Center',
        content: '将其子widget居中显示在自身内部的widget',
        routerName: Constant.widgetsLayoutCenterPage),
    HomeData(
        title: 'Align',
        content: '一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小。',
        routerName: Constant.widgetsLayoutAlignPage),
    HomeData(
        title: 'FittedBox',
        content: '按自己的大小调整其子widget的大小和位置。',
        routerName: Constant.widgetsLayoutFittedBoxPage),
    HomeData(
        title: 'AspectRatio',
        content: '一个widget，试图将子widget的大小指定为某个特定的长宽比',
        routerName: Constant.widgetsLayoutAspectRatioPage),
    HomeData(
        title: 'ConstrainedBox',
        content: '对其子项施加附加约束的widget',
        routerName: Constant.widgetsLayoutConstrainedBoxPage),
  ];

  @override
  State<StatefulWidget> createState() => _LayoutWidgetListPageState();
}

class _LayoutWidgetListPageState extends State<LayoutWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

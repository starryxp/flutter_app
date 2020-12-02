import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class DraggableWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'DraggableScrollableSheet',
        content: '拖拽滚动组件',
        routerName:
            RouterConstant.widgetsDraggableDraggableScrollableSheetPage),
    HomeData(
        title: 'Draggable',
        content: '拖拽组件',
        routerName: RouterConstant.widgetsDraggableDraggablePage),
    HomeData(
        title: 'DragTarget',
        content: '拖拽目标组件',
        routerName: RouterConstant.widgetsDraggableDragTargetPage),
  ];

  @override
  State<StatefulWidget> createState() => _DraggableWidgetListPageState();
}

class _DraggableWidgetListPageState extends State<DraggableWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖拽组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class OtherWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'NotificationListener',
        content: 'widget通知监听',
        routerName: RouterConstant.widgetsOtherNotificationListenerPage),
    HomeData(
        title: 'DraggableScrollableSheet',
        content: '拖拽滚动布局',
        routerName: RouterConstant.widgetsOtherDraggableScrollableSheetPage),
  ];

  @override
  State<StatefulWidget> createState() => _OtherWidgetListPageState();
}

class _OtherWidgetListPageState extends State<OtherWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('其他组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

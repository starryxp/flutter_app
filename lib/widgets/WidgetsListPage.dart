import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class WidgetsListPage extends StatefulWidget {
  final dataList = [
    HomeData(title: '基础组件', routerName: Constant.widgetsBasicBasicListPage),
    HomeData(title: '基础组件', routerName: Constant.widgetsBasicBasicListPage),
  ];

  @override
  State<StatefulWidget> createState() {
    return WidgetsListPageState();
  }
}

class WidgetsListPageState extends State<WidgetsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets目录'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget.dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

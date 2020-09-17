import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class HomePage extends StatefulWidget {
  final List<HomeData> homeDataList = [
    HomeData(
        title: 'Widgets目录',
        content: 'Flutter的一套的视觉、结构、平台、和交互式的widgets。',
        routerName: Constant.widgetsWidgetsListPage),
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
        padding: EdgeInsets.all(10),
        children: widget.homeDataList.map((HomeData homeData) {
          return HomeListItem(homeData: homeData);
        }).toList(),
      ),
    );
  }
}

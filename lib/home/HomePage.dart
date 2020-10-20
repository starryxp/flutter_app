import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class HomePage extends StatefulWidget {
  final List<HomeData> _homeDataList = [
    HomeData(
        title: 'Widgets目录',
        content: 'Flutter的一套的视觉、结构、平台、和交互式的widgets。',
        routerName: Constant.widgetsWidgetsListPage),
    HomeData(
        title: 'State生命周期',
        content: '',
        routerName: Constant.widgetsMaterialNavigationTabBarViewPage),
    HomeData(
        title: 'Matrix4矩阵变换',
        content: '',
        routerName: Constant.matrix4Matrix4Page),
  ];

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter教学从零开始'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: widget._homeDataList.map((HomeData homeData) {
          return HomeListItem(homeData: homeData);
        }).toList(),
      ),
    );
  }
}

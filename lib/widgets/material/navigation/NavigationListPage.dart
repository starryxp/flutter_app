import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class NavigationListPage extends StatelessWidget {
  final dataList = [
    HomeData(
        title: 'Scaffold',
        content:
            'Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。',
        routerName: Constant.widgetsBasicScaffoldPage),
    HomeData(
        title: 'Appbar',
        content:
            '一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。',
        routerName: Constant.widgetsBasicAppbarPage),
    HomeData(
        title: 'BottomNavigationBar',
        content: '底部导航条，可以很容易地在tap之间切换和浏览顶级视图。',
        routerName: ''),
    HomeData(
        title: 'TabBar',
        content: '一个显示水平选项卡的Material Design widget。',
        routerName: ''),
    HomeData(
        title: 'TabBarView',
        content: '显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用。',
        routerName: ''),
    HomeData(
        title: 'MaterialApp',
        content: '一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。',
        routerName: ''),
    HomeData(
        title: 'WidgetsApp',
        content: '一个方便的类，它封装了应用程序通常需要的一些widget。',
        routerName: ''),
    HomeData(
        title: 'Drawer',
        content: '从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。',
        routerName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App结构和导航'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

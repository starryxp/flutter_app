import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class BasicListPage extends StatelessWidget {
  final dataList = [
    HomeData(
        title: 'Container', routerName: Constant.widgetsBasicContainerPage),
    HomeData(title: 'Row', routerName: Constant.widgetsBasicRowPage),
    HomeData(title: 'Column', routerName: Constant.widgetsBasicColumnPage),
    HomeData(title: 'Image', routerName: Constant.widgetsBasicImagePage),
    HomeData(title: 'Text', routerName: Constant.widgetsBasicTextPage),
    HomeData(title: 'Icon', routerName: Constant.widgetsBasicIconPage),
    HomeData(title: 'Button', routerName: Constant.widgetsBasicButtonPage),
    HomeData(title: 'Scaffold', routerName: Constant.widgetsBasicScaffoldPage),
    HomeData(title: 'Appbar', routerName: Constant.widgetsBasicAppbarPage),
    HomeData(
        title: 'FlutterLogo', routerName: Constant.widgetsBasicFlutterLogoPage),
    HomeData(
        title: 'Placeholder', routerName: Constant.widgetsBasicPlaceholderPage),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础组件'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        children: dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class BasicListPage extends StatelessWidget {
  final dataList = [
    HomeData(title: '介绍Flutter里面的一些常用的基础组件的基本用法', content: ''),
    HomeData(
      title: 'Container',
      content: '一个拥有绘制、定位、调整大小的 widget。',
      routerName: Constant.widgetsBasicContainerPage,
    ),
    HomeData(
      title: 'Row',
      content: '在水平方向上排列子widget的列表。',
      routerName: Constant.widgetsBasicRowPage,
    ),
    HomeData(
      title: 'Column',
      content: '在垂直方向上排列子widget的列表。',
      routerName: Constant.widgetsBasicColumnPage,
    ),
    HomeData(
      title: 'Image',
      content: '图片',
      routerName: Constant.widgetsBasicImagePage,
    ),
    HomeData(
      title: 'Text',
      content: '文本',
      routerName: Constant.widgetsBasicTextPage,
    ),
    HomeData(
      title: 'Icon',
      content: 'Flutter 的图标类，它集成了 Material 风格的图标。',
      routerName: Constant.widgetsBasicIconPage,
    ),
    HomeData(
      title: 'Button',
      content: '按钮',
      routerName: Constant.widgetsBasicButtonPage,
    ),
    HomeData(
      title: 'Scaffold',
      content: '布局结构的基本实现',
      routerName: Constant.widgetsBasicScaffoldPage,
    ),
    HomeData(
      title: 'Appbar',
      content: '顶端栏',
      routerName: Constant.widgetsBasicAppbarPage,
    ),
    HomeData(
      title: 'FlutterLogo',
      content: '',
      routerName: Constant.widgetsBasicFlutterLogoPage,
    ),
    HomeData(
      title: 'Placeholder',
      content: '',
      routerName: Constant.widgetsBasicPlaceholderPage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

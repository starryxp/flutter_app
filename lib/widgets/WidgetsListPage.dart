import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class WidgetsListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
      title: '基础组件',
      content: '在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。',
      routerName: Constant.widgetsBasicBasicListPage,
    ),
    HomeData(
        title: 'Material Widgets',
        content: '实现了Material Design 指南的视觉、效果、motion-rich的widget。',
        routerName: Constant.widgetsMaterialMaterialListPage),
    HomeData(
      title: 'Cupertino Widgets',
      content: '用于当前iOS设计语言的美丽和高保真widget。',
    ),
    HomeData(
      title: 'Layout',
      content: '排列其它widget的columns、rows、grids和其它的layouts。',
    ),
    HomeData(
      title: 'Text',
      content: '文本显示和样式',
    ),
    HomeData(
      title: 'Assets、图片、Icons',
      content: '管理assets, 显示图片和Icon。',
    ),
    HomeData(
      title: 'Input',
      content: 'Material Components 和 Cupertino中获取用户输入的widget。',
    ),
    HomeData(
      title: '动画和Motion',
      content: '在您的应用中使用动画。查看Flutter中的动画总览',
    ),
    HomeData(
      title: '交互模型',
      content: '响应触摸事件并将用户路由到不同的页面视图（View）。',
    ),
    HomeData(
      title: '样式',
      content: '管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。',
    ),
    HomeData(
      title: '绘制和效果',
      content: 'Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。',
    ),
    HomeData(
      title: 'Async',
      content: 'Flutter应用的异步模型',
    ),
    HomeData(
      title: '滚动',
      content: '滚动一个拥有多个子组件的父组件',
    ),
    HomeData(
      title: '辅助功能',
      content: '给你的App添加辅助功能(这是一个正在进行的工作)',
    ),
  ];

  @override
  State<StatefulWidget> createState() {
    return _WidgetsListPageState();
  }
}

class _WidgetsListPageState extends State<WidgetsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets目录'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class CupertinoWidgetListPage extends StatelessWidget {
  final _dataList = [
    HomeData(
        title: 'CupertinoActivityIndicator',
        content: '一个iOS风格的loading指示器。显示一个圆形的转圈菊花',
        routerName: Constant.widgetsCupertinoCupertinoActivityIndicatorPage),
    HomeData(
        title: 'CupertinoAlertDialog',
        content: 'iOS风格的alert dialog.',
        routerName: Constant.widgetsCupertinoCupertinoAlertDialogPage),
    HomeData(
        title: 'CupertinoButton', content: 'iOS风格的button.', routerName: ''),
    HomeData(title: 'CupertinoDialog', content: 'iOS风格的对话框', routerName: ''),
    HomeData(
        title: 'CupertinoDialogAction',
        content: '通常用于CupertinoAlertDialog的一个button',
        routerName: ''),
    HomeData(title: 'CupertinoSlider', content: '从一个范围中选一个值.', routerName: ''),
    HomeData(
        title: 'CupertinoPageTransition',
        content: '提供iOS风格的页面过度动画',
        routerName: ''),
    HomeData(
        title: 'CupertinoFullscreenDialogTransition',
        content: '一个iOS风格的过渡，用于调用全屏对话框。',
        routerName: ''),
    HomeData(
        title: 'CupertinoNavigationBar',
        content: 'OS风格的导航栏. 通常和CupertinoPageScaffold一起使用。',
        routerName: ''),
    HomeData(
        title: 'CupertinoTabBar',
        content: 'iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用。',
        routerName: ''),
    HomeData(
        title: 'CupertinoPageScaffold',
        content: '一个iOS风格的页面的基本布局结构。包含内容和导航栏',
        routerName: ''),
    HomeData(
        title: 'CupertinoTabScaffold',
        content: '标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上',
        routerName: ''),
    HomeData(
        title: 'CupertinoTabView',
        content: '支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用',
        routerName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino Widgets')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

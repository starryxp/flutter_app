import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class CupertinoWidgetListPage extends StatelessWidget {
  final _dataList = [
    HomeData(
        title: 'CupertinoActivityIndicator',
        content: '一个iOS风格的loading指示器。显示一个圆形的转圈菊花',
        routerName: RouterConstant.widgetsCupertinoCupertinoActivityIndicatorPage),
    HomeData(
        title: 'CupertinoAlertDialog',
        content: 'iOS风格的alert dialog.',
        routerName: RouterConstant.widgetsCupertinoCupertinoAlertDialogPage),
    HomeData(
        title: 'CupertinoButton',
        content: 'iOS风格的button.',
        routerName: RouterConstant.widgetsCupertinoCupertinoButtonPage),
    HomeData(
        title: 'CupertinoDialog\nCupertinoPopupSurface',
        content: 'iOS风格的对话框',
        routerName: RouterConstant.widgetsCupertinoCupertinoDialogPage),
    HomeData(
        title: 'CupertinoSlider',
        content: '从一个范围中选一个值.',
        routerName: RouterConstant.widgetsCupertinoCupertinoSliderPage),
    HomeData(
        title: 'CupertinoSwitch',
        content: 'iOS风格的开关. 用于单一状态的开/关',
        routerName: RouterConstant.widgetsCupertinoCupertinoSwitchPage),
    HomeData(
        title: 'CupertinoPageScaffold\nCupertinoNavigationBar',
        content:
            '一个iOS风格的页面的基本布局结构。包含内容和导航栏\niOS风格的导航栏. 通常和CupertinoPageScaffold一起使用。',
        routerName: RouterConstant.widgetsCupertinoCupertinoPageScaffoldPage),
    HomeData(
        title: 'CupertinoTabScaffold\nCupertinoTabBar\nCupertinoTabView',
        content:
            '标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上\niOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用。\n支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用',
        routerName: RouterConstant.widgetsCupertinoCupertinoTabScaffoldPage),
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

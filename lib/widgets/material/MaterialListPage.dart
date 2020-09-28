import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class MaterialListPage extends StatelessWidget {
  final _dataList = [
    HomeData(
        title: 'App结构和导航',
        content: '',
        routerName: Constant.widgetsMaterialNavigationNavigationListPage),
    HomeData(
        title: '按钮',
        content: '',
        routerName: Constant.widgetsMaterialButtonMaterialButtonPage),
    HomeData(
        title: 'TextField',
        content: '文本输入框',
        routerName: Constant.widgetsMaterialTextFieldPage),
    HomeData(
        title: 'Checkbox',
        content: '复选框，允许用户从一组中选择多个选项。',
        routerName: Constant.widgetsMaterialCheckboxPage),
    HomeData(
        title: 'Radio',
        content: '单选框，允许用户从一组中选择一个选项。',
        routerName: Constant.widgetsMaterialRadioPage),
    HomeData(
        title: 'Switch',
        content: 'On/off 用于切换一个单一状态',
        routerName: Constant.widgetsMaterialSwitchPage),
    HomeData(
        title: 'Slider', content: '滑块，允许用户通过滑动滑块来从一系列值中选择。', routerName: ''),
    HomeData(title: 'Date & Time Pickers', content: '日期&时间选择器', routerName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Widgets')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

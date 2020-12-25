import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class TextWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'Text',
        content: '文本',
        routerName: RouterConstant.widgetsBasicTextPage),
    HomeData(
        title: 'RichText',
        content: '一个富文本Text，可以显示多种样式的text。',
        routerName: RouterConstant.widgetsTextRichTextPage),
  ];

  @override
  State<StatefulWidget> createState() => _TextWidgetListPageState();
}

class _TextWidgetListPageState extends State<TextWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

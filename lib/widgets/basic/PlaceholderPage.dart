import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  final _tip = '''
  1.Placeholder介绍
    一个占位控件
  2.Placeholder属性
    color: Colors.blue, // 设置占位符颜色 
    strokeWidth: 5, //设置画笔宽度
    fallbackHeight: 200, //设置占位符宽度
    fallbackWidth: 200, //设置占位符高度
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Placeholder：占位控件'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Placeholder(
                color: Colors.red,
                strokeWidth: 3,
                fallbackWidth: 100,
                fallbackHeight: 100,
              )
            ],
          ),
          Text(_tip),
        ],
      ),
    );
  }
}

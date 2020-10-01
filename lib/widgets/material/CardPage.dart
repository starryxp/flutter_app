import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  final tip = '''
1.Card介绍
一个 Material Design 卡片。拥有一个圆角和阴影
2.Card属性
- color：背景色
- shadowColor：阴影色
- elevation：阴影
- shape：形状
- margin：外边距
- clipBehavior：狂锯齿等属性
- child：子节点
  ''';

  @override
  State<StatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  _myCard() {
    return Card(
      color: Colors.grey,
      shadowColor: Colors.amber,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          'Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        children: [
          _myCard(),
          _myCard(),
          _myCard(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  final _tip = '''
1.SizedBox介绍
2.SizedBox属性
- width：宽
- height： 高
- child：
3.SizedBox.expand属性
- child：
4.SizedBox.shrink属性
- child：
5.SizedBox.fromSize属性
- size：Size
- child：
6.Size属性
- width： 
- height：
7.Size.copy属性
- size：Size
8.Size.square属性
- dimension：正方形边长
9.Size.fromWidth属性
- width：宽度
10.Size.fromHeight属性
- height：高度
  ''';

  _myChild() {
    return DecoratedBox(decoration: BoxDecoration(color: Colors.red));
  }

  _mySize() {
    return Size(20, 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Container(
              width: 20,
              height: 20,
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 20,
              height: 20,
              child: _myChild(),
            ),
          ),
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(top: 10),
            child: SizedBox(
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.blue,
            width: 50,
            height: 50,
            child: SizedBox.expand(
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.blue,
            constraints: BoxConstraints(
              maxWidth: 100,
              maxHeight: 100,
              minWidth: 10,
              minHeight: 10,
            ),
            child: SizedBox.shrink(
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox.fromSize(
              size: _mySize(),
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox.fromSize(
              size: Size.copy(_mySize()),
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox.fromSize(
              size: Size.square(20),
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 50,
            child: SizedBox.fromSize(
              size: Size.fromWidth(20),
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox.fromSize(
              size: Size.fromHeight(20),
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SizedBox.fromSize(
              size: Size.fromRadius(10),
              child: _myChild(),
            ),
          ),
        ],
      ),
    );
  }
}

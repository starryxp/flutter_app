import 'package:flutter/material.dart';

class ListBodyPage extends StatelessWidget {
  final _tip = '''
1.ListBody介绍
一个widget，它沿着一个给定的轴，顺序排列它的子元素
2.ListBody属性
- mainAxis = Axis.vertical：滑动方向
- reverse = false：是否倒序
- children = const <Widget>[]：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: [
            Container(
              height: 100,
              color: Colors.blue[50],
            ),
            Container(
              height: 100,
              color: Colors.blue[100],
            ),
            Container(
              height: 100,
              color: Colors.blue[200],
            ),
            Container(
              height: 100,
              color: Colors.blue[300],
            ),
            Container(
              height: 100,
              color: Colors.blue[400],
            ),
            Container(
              height: 100,
              color: Colors.blue[500],
            ),
            Container(
              height: 100,
              color: Colors.blue[600],
            ),
          ],
        ),
      ),
    );
  }
}

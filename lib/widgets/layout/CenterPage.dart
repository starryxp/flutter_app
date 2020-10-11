import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  final _tip = '''
1.Center介绍
将其子widget居中显示在自身内部的widget
2.Center属性
- widthFactor：宽度因子
- heightFactor：高度因子
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                'Center',
                style: TextStyle(backgroundColor: Colors.amber),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.red,
            child: Center(
              widthFactor: 2,
              child: Text(
                'Center',
                style: TextStyle(backgroundColor: Colors.amber),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.red,
            child: Center(
              heightFactor: 2,
              child: Text(
                'Center',
                style: TextStyle(backgroundColor: Colors.amber),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.red,
            child: Center(
              widthFactor: 2,
              heightFactor: 2,
              child: Text(
                'Center',
                style: TextStyle(backgroundColor: Colors.amber),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  final _tip = '''
1.Padding介绍
一个widget, 可以给其子节点添加填充（留白），实现内边距效果，我们在前面很多示例中都已经使用过它了。
2.Padding属性
- padding：EdgeInsets
- child：
3.EdgeInsets属性
- EdgeInsets.fromLTRB(double left, double top, double right, double bottom)：分别指定四个方向的填充。
- EdgeInsets.all(double value) : 所有方向均使用相同数值的填充。
- EdgeInsets.only({left, top, right ,bottom })：可以设置具体某个方向的填充(可以同时指定多个方向)。
- EdgeInsets.symmetric({ vertical, horizontal })：用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 5, 7, 10),
                  child: Text(
                    'EdgeInsets.fromLTRB',
                    style: TextStyle(backgroundColor: Colors.amber),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'EdgeInsets.all',
                    style: TextStyle(backgroundColor: Colors.amber),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.red,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 8, left: 5, right: 7, bottom: 10),
                  child: Text(
                    'EdgeInsets.only',
                    style: TextStyle(backgroundColor: Colors.amber),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Text(
                    'EdgeInsets.symmetric',
                    style: TextStyle(backgroundColor: Colors.amber),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

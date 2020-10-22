import 'package:flutter/material.dart';

class IndexedStackPage extends StatelessWidget {
  final _tip = '''
1.IndexedStack介绍
从一个子widget列表中显示单个孩子的Stack，继承自Stack
2.IndexedStack属性
- alignment = AlignmentDirectional.topStart：
- textDirection：文本方向
- sizing = StackFit.loose：子组件如何去适应IndexedStack的大小，就是Stack的fit属性，但是在这里sizing属性不会对子组件大小有影响
- index = 0：显示第几个子组件
- children = const <Widget>[]：
  ''';

  _myStackChildren() {
    return [
      Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
      Positioned(
        bottom: 20,
        child: Container(
          width: 80,
          height: 80,
          color: Colors.green,
        ),
      ),
      Container(
        width: 60,
        height: 60,
        color: Colors.cyan,
      ),
      Positioned(
        left: 30,
        top: 80,
        width: 2000,
        height: 20,
        child: Container(
          color: Colors.black,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.blue,
        child: IndexedStack(
          alignment: AlignmentDirectional.center,
          sizing: StackFit.expand,
          index: 0,
          children: _myStackChildren(),
        ),
      ),
    );
  }
}

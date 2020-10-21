import 'package:flutter/material.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  final _tip = '''
1.FractionallySizedBox介绍
一个widget，它把它的子项放在可用空间的一小部分。其内部实现是有RenderFractionallySizedOverflowBox完成的。
2.FractionallySizedBox属性
- alignment = Alignment.center：
- widthFactor：宽度因子
- heightFactor：高度因子
- child：
  ''';

  _myChild() {
    return Container(
      width: 80,
      height: 80,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                child: _myChild(),
                widthFactor: 0.5,
                heightFactor: 0.5,
                alignment: Alignment.topLeft,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                child: _myChild(),
                alignment: Alignment.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                child: _myChild(),
                widthFactor: 2,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

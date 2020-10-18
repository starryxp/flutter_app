import 'package:flutter/material.dart';

class OverflowBoxPage extends StatelessWidget {
  final _tip = '''
1.OverflowBox介绍
对其子项施加不同约束的widget，它可能允许子项溢出父级。
2.OverflowBox属性
- alignment = Alignment.center：位置
- minWidth：最小宽度
- maxWidth：最大宽度
- minHeight：最小高度
- maxHeight：最大高度
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
        color: Colors.blue,
        height: 200,
        child: OverflowBox(
          alignment: Alignment.center,
          minWidth: 20,
          maxWidth: 200,
          maxHeight: 400,
          minHeight: 20,
          child: Container(
            width: 50,
            height: 300,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LimitedBoxPage extends StatelessWidget {
  final _tip = '''
1.LimitedBox介绍
一个当其自身不受约束时才限制其大小的盒子
2.LimitedBox属性
- maxWidth：double.infinity 最大宽度
- maxHeight：double.infinity 最大高度
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox'),
      ),
      body: Container(
        color: Colors.blue,
        child: UnconstrainedBox(
          child: LimitedBox(
            maxWidth: 100,
            maxHeight: 100,
            child: Text(
                'ddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaa'),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  final _tip = '''
1.ConstrainedBox介绍
对其子项施加附加约束的widget
2.ConstrainedBox属性
- constraints：BoxConstraints
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    _myChild() {
      return DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            child: _myChild(),
            constraints: BoxConstraints(
              minWidth: 10,
              minHeight: 10,
              maxWidth: 100,
              maxHeight: 100,
            ),
          ),ConstrainedBox(
            child: _myChild(),
            constraints: BoxConstraints.loose(Size(50, 50)),
          ),
        ],
      ),
    );
  }
}

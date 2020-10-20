import 'package:flutter/material.dart';

class UnconstrainedBoxPage extends StatelessWidget {
  final _tip = '''
1.UnconstrainedBox介绍
消除约束的widget
2.UnconstrainedBox属性
- child：
- textDirection：文本方向
- alignment = Alignment.center：
- constrainedAxis：保留纵向或者横向的约束
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnconstrainedBox'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: BoxConstraints(
          minWidth: 200,
          minHeight: 200,
        ),
        child: UnconstrainedBox(
          constrainedAxis: Axis.horizontal,
          alignment: Alignment.center,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

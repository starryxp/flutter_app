import 'package:flutter/material.dart';

class SizedOverflowBoxPage extends StatelessWidget {
  final _tip = '''
1.SizedOverflowBox介绍
一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出。
2.SizedOverflowBox属性
- size：
- alignment = Alignment.center：
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: SizedOverflowBox(
              alignment: Alignment.topCenter,
              size: Size(100, 50),
              child: Container(
                width: 50,
                height: 80,
                color: Colors.amber,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            color: Colors.blue,
            constraints: BoxConstraints(
              maxHeight: 50,
            ),
            child: SizedOverflowBox(
              alignment: Alignment.topCenter,
              size: Size(100, 50),
              child: Container(
                width: 50,
                height: 80,
                color: Colors.amber,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            color: Colors.blue,
            height: 50,
            constraints: BoxConstraints(
              maxHeight: 50,
            ),
            child: OverflowBox(
              alignment: Alignment.topCenter,
              minWidth: 20,
              maxWidth: 100,
              maxHeight: 100,
              minHeight: 20,
              child: Container(
                width: 50,
                height: 120,
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}

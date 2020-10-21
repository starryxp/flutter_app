import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class OffstagePage extends StatelessWidget {

  final _tip = '''
1.Offstage介绍
一个布局widget，可以控制其子widget的显示和隐藏。
2.Offstage属性
- offstage = true：显示、隐藏
- child
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage'),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Offstage(
              offstage: true,
              child: Image.asset(AssetPathConstant.imageScan),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Offstage(
              offstage: false,
              child: Image.asset(AssetPathConstant.imageScan),
            ),
          ),
        ],
      ),
    );
  }
}

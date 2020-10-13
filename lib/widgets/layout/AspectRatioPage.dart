import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  final _tip = '''
1.AspectRatio介绍
一个widget，试图将子widget的大小指定为某个特定的长宽比
2.AspectRatio属性
- aspectRatio：宽高比，a/b,最终可能不会根据这个值去布局，具体则要看综合因素，外层是否允许按照这种比率进行布局，这只是一个参考值。
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    _myChild() {
      return Container(color: Colors.red,);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 0.01,
            child: _myChild(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,
            height: 50,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,
            height: 50,
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 1 / 0.01,
              child: _myChild(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            constraints: BoxConstraints(
              minWidth: 50,
              minHeight: 50,
              maxWidth: 200,
              maxHeight: 200,
            ),
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 1 / 0.01,
              child: _myChild(),
            ),
          ),
        ],
      ),
    );
  }
}

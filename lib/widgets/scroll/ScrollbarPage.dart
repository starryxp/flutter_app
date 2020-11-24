import 'package:flutter/material.dart';

class ScrollbarPage extends StatelessWidget {
  final _tip = '''
1.Scrollbar介绍
滚动条
2.Scrollbar属性
- child：
- controller：ScrollController
- isAlwaysShown = false：是否总是显示，true需要设置ScrollController
- thickness：Scrollbar宽度
- radius：Scrollbar圆角
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar'),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          //滑动指示器是否在头部 true在前端，false在末端
          print('${notification.leading}');
          return true;
        },
        child: Scrollbar(
          radius: Radius.circular(10),
          thickness: 10,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item $index'),
              );
            },
            itemCount: 30,
          ),
        ),
      ),
    );
  }
}

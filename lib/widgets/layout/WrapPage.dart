import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  final _tip = '''
1.Wrap介绍
可以在水平或垂直方向多行显示其子widget（换行布局）
2.Wrap属性
- direction = Axis.horizontal：主轴方向，决定了子组件纵向布局还是横向
- alignment = WrapAlignment.start：主轴对齐方式，哪个方向是主轴有direction来确定
- spacing = 0.0：每个子组件之间的间距
- runAlignment = WrapAlignment.start：次轴对齐方式
- runSpacing = 0.0：每行/列的间距，由direction决定，horizontal行间距，vertical列间距
- crossAxisAlignment = WrapCrossAlignment.start：次轴对齐方式
- textDirection：文本方向
- verticalDirection = VerticalDirection.down：升序布局还是降序布局
- clipBehavior = Clip.hardEdge：
- children = const <Widget>[]：
  ''';

  _myChildren() {
    return [
      Text(
        '11111111111',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '222222',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '3333333333333333',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '44',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '5555',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '6666666',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '77777777777777777',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '8',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '99999999999999',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '10',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '11111111111',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '222222',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '3333333333333333',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '44',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '5555',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '66666666666666666',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '7777777777',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '8',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '99999999999999',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
      Text(
        '10',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        spacing: 20,
        runAlignment: WrapAlignment.start,
        runSpacing: 0,
        crossAxisAlignment: WrapCrossAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: _myChildren(),
      ),
    );
  }
}

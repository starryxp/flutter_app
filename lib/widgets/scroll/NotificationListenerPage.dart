import 'package:flutter/material.dart';

class NotificationListenerPage extends StatelessWidget {
  final _tip = '''
1.NotificationListener介绍
widget通知监听
2.NotificationListener属性
this.child,
this.onNotification,
3.ScrollNotification属性
- pixels：当前绝对位置
- atEdge：是否在顶部或底部
- axis：垂直或水平滚动
- axisDirection：滚动方向描述是down还是up，这个受列表reverse影响，正序就是down倒序就是up，并不代表列表是上滑还是下滑
- extentAfter：视口底部距离列表底部有多大
- extentBefore：视口顶部距离列表顶部有多大
- extentInside：视口范围内的列表长度
- maxScrollExtent：最大滚动距离，列表长度-视口长度
- minScrollExtent：最小滚动距离
- viewportDimension：沿滚动方向视口的长度
- outOfRange：是否越过边界
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotificationListener'),
      ),
      body: NotificationListener<ScrollNotification>(
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(title: Text('item $index')),
          itemCount: 30,
          reverse: true,
          physics: BouncingScrollPhysics(),
        ),
        onNotification: (notification) {
          ScrollMetrics metrics = notification.metrics;
          print('####################');
          print('pixels = ${metrics.pixels}');
          print('atEdge = ${metrics.atEdge}');
          print('axis = ${metrics.axis}');
          print('axisDirection = ${metrics.axisDirection}');
          print('extentAfter = ${metrics.extentAfter}');
          print('extentBefore = ${metrics.extentBefore}');
          print('extentInside = ${metrics.extentInside}');
          print('maxScrollExtent = ${metrics.maxScrollExtent}');
          print('minScrollExtent = ${metrics.minScrollExtent}');
          print('viewportDimension = ${metrics.viewportDimension}');
          print('outOfRange = ${metrics.outOfRange}');
          print('####################');
          return false;
        },
      ),
    );
  }
}

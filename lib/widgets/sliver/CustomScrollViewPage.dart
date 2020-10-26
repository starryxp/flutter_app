import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomScrollViewPage extends StatelessWidget {
  final _tip = '''
1.CustomScrollView
一个使用slivers创建自定义的滚动效果的ScrollView
2.CustomScrollView属性
= scrollDirection = Axis.vertical：滚动方向
- reverse = false：是否倒序
- controller：ScrollController 滑动控制器
- primary：当内容不足以滚动时，是否支持滚动 但是这里是不起作用的，因为CustomScrollView需要内容满了才能触发折叠效果
- physics：ScrollPhysics 控制用户滚动视图的交互
- shrinkWrap = false：滑动方向上是否允许最大允许高度
- anchor = 0.0：零滚动偏移位置，会在滚动方向上进行整体位置偏移 0～1
- slivers = const <Widget>[]：
- semanticChildCount：语义子组件数量
  ''';

  _mySliverLayoutBuilder() {
    var _color = Colors.green;
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      primary: true,
      anchor: 0.2,
      physics: BouncingScrollPhysics(),
      dragStartBehavior: DragStartBehavior.down,
      slivers: [
        SliverLayoutBuilder(
          builder: (BuildContext context, SliverConstraints constraints) {
            print('SliverConstraints  = $constraints');
            if (constraints.userScrollDirection == ScrollDirection.forward) {
              _color = Colors.blue;
            } else if (constraints.userScrollDirection ==
                ScrollDirection.idle) {
              _color = Colors.green;
            } else {
              _color = Colors.cyan;
            }

            return SliverToBoxAdapter(
              child: Container(
                height: 200,
                color: _color,
              ),
            );
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                child: Container(
                  height: 50,
                  color: Colors.primaries[(index % 18)],
                ),
              );
            },
            childCount: 15,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView'),
      ),
      body: _mySliverLayoutBuilder(),
    );
  }
}

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final _tip = '''
1.GridView介绍
一个可滚动的二维空间数组
2.GridView属性
- scrollDirection = Axis.vertical：滑动方向
- reverse = false：是否反响
- controller：ScrollController 滑动控制器
- primary：当内容不足以滚动时，是否支持滚动
- physics：控制用户滚动视图的交互
- shrinkWrap = false：滑动方向上是否允许最大允许高度
- padding：内边距
- gridDelegate：SliverGridDelegate
- cacheExtent：缓存
- children = const <Widget>[]：
- dragStartBehavior = DragStartBehavior.start：响应拖动的时机
- clipBehavior = Clip.hardEdge：超出内容的裁剪方式
- keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual：滑动组件键盘隐藏模式
- restorationId：滑动位置记忆标志
3.GridView.builder属性
- gridDelegate：SliverGridDelegate：SliverGridDelegateWithFixedCrossAxisCount/SliverGridDelegateWithMaxCrossAxisExtent
- itemBuilder：IndexedWidgetBuilder
- itemCount：item个数
4.GridView.count属性
- crossAxisCount：次轴方向item数
- children = const <Widget>[]：
5.GridView.extent属性
- maxCrossAxisExtent: 次轴方向上item最大长度
- children: 
6.GridView.custom属性
- gridDelegate：SliverGridDelegate：SliverGridDelegateWithFixedCrossAxisCount/SliverGridDelegateWithMaxCrossAxisExtent
- childrenDelegate：SliverChildDelegate：SliverChildListDelegate/SliverChildBuilderDelegate
  ''';

  _mySliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 1.5,
    );
  }

  _myGridView() {
    return GridView(
      gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
      children: [
        Container(
          height: 80,
          color: Colors.blue,
        ),
        Container(
          height: 80,
          color: Colors.yellow,
        ),
        Container(
          height: 80,
          color: Colors.red,
        ),
        Container(
          height: 80,
          color: Colors.green,
        ),
      ],
    );
  }

  _myGridViewBuilder() {
    return GridView.builder(
      gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.primaries[index % 11],
        );
      },
      itemCount: 5,
    );
  }

  _myGridViewCount() {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        Container(
          height: 80,
          color: Colors.blue,
        ),
        Container(
          height: 80,
          color: Colors.yellow,
        ),
        Container(
          height: 80,
          color: Colors.red,
        ),
        Container(
          height: 80,
          color: Colors.green,
        ),
      ],
    );
  }

  _myGridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      children: [
        Container(
          height: 80,
          color: Colors.blue,
        ),
        Container(
          height: 80,
          color: Colors.yellow,
        ),
        Container(
          height: 80,
          color: Colors.red,
        ),
        Container(
          height: 80,
          color: Colors.green,
        ),
      ],
    );
  }

  _myGridViewCustom() {
    return GridView.custom(
      gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
      childrenDelegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.primaries[index % 11],
        );
      }, childCount: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      // body: _myGridView(),
      // body: _myGridViewBuilder(),
      // body: _myGridViewCount(),
      // body: _myGridViewExtent(),
      body: _myGridViewCustom(),
    );
  }
}

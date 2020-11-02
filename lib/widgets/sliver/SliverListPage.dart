import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverListPage extends StatelessWidget {
  final _tip = '''
1.SliverList介绍
CustomScrollView+SliverList组合使用其实就相当于是个ListView
2.SliverList属性
- delegate：SliverChildDelegate 系统提供个两个已经实现好的代理：SliverChildListDelegate/SliverChildBuilderDelegate
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverList'),
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          ImageUrlConstant.imageUrl1,
          fit: BoxFit.cover,
        ),
        collapseMode: CollapseMode.parallax,
      ),
    );
  }

  _mySliverChildListDelegate() {
    return SliverChildListDelegate([
      Container(
        height: 80,
        color: Colors.primaries[0],
      ),
      Container(
        height: 80,
        color: Colors.primaries[1],
      ),
      Container(
        height: 80,
        color: Colors.primaries[2],
      ),
      Container(
        height: 80,
        color: Colors.primaries[3],
      ),
      Container(
        height: 80,
        color: Colors.primaries[4],
      ),
      Container(
        height: 80,
        color: Colors.primaries[5],
      ),
      Container(
        height: 80,
        color: Colors.primaries[6],
      ),
      Container(
        height: 80,
        color: Colors.primaries[7],
      ),
      Container(
        height: 80,
        color: Colors.primaries[8],
      ),
    ]);
  }

  _mySliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.primaries[index % 11],
        );
      },
      childCount: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _mySliverAppBar(),
        SliverList(
          delegate: _mySliverChildBuilderDelegate(),
          // delegate: _mySliverChildListDelegate(),
        ),
      ],
    );
  }
}

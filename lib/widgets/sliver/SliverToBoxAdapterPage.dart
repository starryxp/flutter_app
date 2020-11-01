import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverToBoxAdapterPage extends StatelessWidget {

  final _tip = '''
1.SliverToBoxAdapter介绍
一个加载普通widget的Sliver组件，如果是滑动的组件不推荐使用这个，而是使用Sliver滑动组件
2.SliverToBoxAdapter属性
- child：
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverToBoxAdapter'),
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
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          _mySliverAppBar(),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),
          SliverList(
            delegate: _mySliverChildBuilderDelegate(),
          ),
        ],
      ),
    );
  }
}

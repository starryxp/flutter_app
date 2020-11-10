import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class NestedScrollViewPage extends StatelessWidget {
  final _tip = '''
1.NestedScrollView介绍
一个可以嵌套其它可滚动widget的widget
2.NestedScrollView属性
- controller：ScrollController
- scrollDirection = Axis.vertical：滑动方向
- reverse = false：是否倒序
- physics：控制用户滚动视图的交互
- headerSliverBuilder：NestedScrollViewHeaderSliversBuilder
- body：Widget
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('NestedScrollView'),
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          ImageUrlConstant.imageUrl1,
          fit: BoxFit.cover,
        ),
        collapseMode: CollapseMode.parallax,
      ),
    );
  }

  _myItem(int index) {
    return Container(
      color: Colors.yellow,
      child: ListTile(
        title: Text('List $index'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: _mySliverAppBar(),
            )
            // _mySliverAppBar(),
          ];
        },
        body: Builder(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return _myItem(index);
                    },
                    childCount: 15,
                  ),
                ),
              ],
            );
          },
        ),
        // body: ListView.builder(
        //   itemBuilder: (BuildContext context, int index) {
        //     return _myItem(index);
        //   },
        //   itemCount: 15,
        // ),
      ),
    );
  }
}

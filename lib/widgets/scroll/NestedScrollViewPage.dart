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

  _mySliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.primaries[index % 11],
        );
      },
      childCount: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          print('innerBoxIsScrolled = $innerBoxIsScrolled');
          return [
            _mySliverAppBar(),
            SliverList(
              delegate: _mySliverChildBuilderDelegate(),
            ),
          ];
        },
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10,
              color: Colors.white,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                child: Text('body：ListView'),
              ),
            );
          },
          itemCount: 25,
        ),
      ),
    );
  }
}

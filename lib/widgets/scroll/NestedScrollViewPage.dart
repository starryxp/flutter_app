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
  - AlwaysScrollableScrollPhysics:列表总是可滚动的。在iOS上会有回弹效果，在android上不会回弹。那么问题来了，如果primary设置为false（内容不足时不滚动），且 physics设置为AlwaysScrollableScrollPhysics，列表是否可以滑动？答案是可以，感兴趣的可以试一下
  - PageScrollPhysics：一般是给PageView控件用的滑动效果。如果listview设置的话在滑动到末尾时会有个比较大的弹起和回弹
  - ClampingScrollPhysics：滚动时没有回弹效果，同android系统的listview效果
  - NeverScrollableScrollPhysics：就算内容超过列表范围也不会滑动
  - BouncingScrollPhysics：不论什么平台都会有回弹效果
- headerSliverBuilder：NestedScrollViewHeaderSliversBuilder
- body：Widget
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverList'),
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

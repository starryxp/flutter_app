import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverPrototypeExtentListPage extends StatelessWidget {

  final _tip = '''
1.SliverPrototypeExtentList介绍
可以依照提供的widget来约束Item高度的SliverList
2.SliverPrototypeExtentList属性
- delegate：SliverChildDelegate
- prototypeItem：widget 以这个组件的主轴方向的高度来约束其他的item的高度
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverPrototypeExtentList'),
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
          SliverPrototypeExtentList(
            delegate: _mySliverChildBuilderDelegate(),
            prototypeItem: Container(
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}

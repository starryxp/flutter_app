import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverFixedExtentListPage extends StatelessWidget {
  final _tip = '''
1.SliverFixedExtentList
可以固定Item高度的SliverList
2.SliverFixedExtentList
- delegate：SliverChildDelegate
- itemExtent：item高度
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverFixedExtentList'),
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
          height: 200,
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
          SliverFixedExtentList(
            delegate: _mySliverChildBuilderDelegate(),
            itemExtent: 100,
          ),
        ],
      ),
    );
  }
}

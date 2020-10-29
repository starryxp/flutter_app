import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverPaddingPage extends StatelessWidget {
  final _tip = '''
1.SliverPadding介绍
sliver组件内边距
2.SliverPadding属性
- padding：内边距
- sliver：sliver组件
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverPadding'),
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

  _mySliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          _mySliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              delegate: _mySliverChildBuilderDelegate(),
              gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverGridPage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _mySliverAppBar(),
        SliverGrid(delegate: null, gridDelegate: null),
      ],
    );
  }
}

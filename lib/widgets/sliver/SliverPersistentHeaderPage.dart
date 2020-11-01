import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverPersistentHeaderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliverPersistentHeaderPageState();
}

class _SliverPersistentHeaderPageState
    extends State<SliverPersistentHeaderPage> {
  final _tip = '''
1.SliverPersistentHeader介绍
可以根据滚动而变大变小的组件，SliverAppBar就是基于这个实现的
2.SliverPersistentHeader属性
- delegate：SliverPersistentHeaderDelegate
- pinned = false：SliverPersistentHeader介绍收缩到最小高度的时候SliverPersistentHeader介绍是否可见，
true：SliverPersistentHeader介绍会以折叠高度固定显示在头部，false：缩小到折叠高度后滑出页面
- floating = false：true 的时候下滑先展示SliverPersistentHeader介绍，展示完成后才展示其他滑动组件内容
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverPersistentHeader'),
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

  bool _pinned = true;
  bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          _mySliverAppBar(),
          SliverPersistentHeader(
            delegate: _MySliverPersistentHeaderDelegate(),
            pinned: _pinned,
            floating: _floating,
          ),
          SliverList(
            delegate: _mySliverChildBuilderDelegate(),
            // delegate: _mySliverChildListDelegate(),
          ),
        ],
      ),
    );
  }
}

class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent = 80;
  final double _maxExtent = 250;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //创建child子组件
    //shrinkOffset：child偏移值minExtent~maxExtent
    //overlapsContent：SliverPersistentHeader覆盖其他子组件返回true，否则返回false
    print('shrinkOffset = $shrinkOffset overlapsContent = $overlapsContent');
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(ImageUrlConstant.imageUrl1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //SliverPersistentHeader最大高度
  @override
  double get maxExtent => _maxExtent;

  //SliverPersistentHeader最小高度
  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant _MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

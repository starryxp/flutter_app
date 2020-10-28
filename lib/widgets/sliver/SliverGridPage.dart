import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class SliverGridPage extends StatelessWidget {
  final _tip = '''
1.SliverGrid介绍
sliver中的GridView
2.SliverGrid属性
- delegate：SliverChildDelegate 系统提供个两个已经实现好的代理：SliverChildListDelegate/SliverChildBuilderDelegate
- gridDelegate：SliverGridDelegate 系统提供个两个已经实现好的代理：SliverGridDelegateWithFixedCrossAxisCount、SliverGridDelegateWithMaxCrossAxisExtent
3.SliverGridDelegateWithFixedCrossAxisCount属性
- crossAxisCount：副轴方向child的列数或行数，垂直滚动就是列数，水平滚动就是行数
- mainAxisSpacing = 0.0：主轴方向间隔
- crossAxisSpacing = 0.0：副轴方向间隔
- childAspectRatio = 1.0：child的宽高比
4.SliverGridDelegateWithMaxCrossAxisExtent属性
- maxCrossAxisExtent：副轴方向child的最大长度，例如：值为200，设置垂直滚动，那就是水平方向上child的最大宽度就是200，如果父控件最大允许宽度是500，只能放下2.5个，那么child的宽度就会变成500/3
- mainAxisSpacing = 0.0：主轴方向间隔
- crossAxisSpacing = 0.0：副轴方向间隔
- childAspectRatio = 1.0：child的宽高比
  ''';

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('SliverGrid'),
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
          height: 50,
          color: Colors.primaries[index % 8],
        );
      },
      childCount: 10,
    );
  }

  _mySliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 1.5,
    );
  }

  _mySliverGridDelegateWithMaxCrossAxisExtent() {
    return SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      childAspectRatio: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          _mySliverAppBar(),
          SliverGrid(
            delegate: _mySliverChildBuilderDelegate(),
            // gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
            gridDelegate: _mySliverGridDelegateWithMaxCrossAxisExtent(),
          ),
        ],
      ),
    );
  }
}

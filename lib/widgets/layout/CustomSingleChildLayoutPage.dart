import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class CustomSingleChildLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomSingleChildLayoutPageState();
}

class _CustomSingleChildLayoutPageState
    extends State<CustomSingleChildLayoutPage> {
  final _tip = '''
1.CustomSingleChildLayout介绍
一个自定义的拥有单个子widget的布局widget
2.CustomSingleChildLayout属性
- delegate：SingleChildLayoutDelegate
- child：
  ''';
  int _loadType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomSingleChildLayout'),
      ),
      body: Container(
        child: Column(
          children: [
            _myChild(Colors.amber, double.infinity, 50),
            _myChild(Colors.red, double.infinity, 100),
            _myChild(Colors.green, 200, 50),
            _myChild(Colors.grey, 20, 100),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _loadType = 0;
                });
              },
              child: Text('加载中'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _loadType = 1;
                });
              },
              child: Text('加载成功'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _loadType = 2;
                });
              },
              child: Text('加载失败'),
            ),
          ],
        ),
      ),
    );
  }

  _myChild(Color color, double width, double height) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: _getContent(),
    );
  }

  _getContent() {
    switch (_loadType) {
      case 1:
        return Text('我是加载完成后的内容');
      case 2:
        return _LoadingLayout(isLoading: false);
      default:
        return _LoadingLayout(isLoading: true);
    }
  }
}

class _LoadingLayout extends CustomSingleChildLayout {
  _LoadingLayout({Key key, bool isLoading})
      : super(
          key: key,
          delegate: _LoadingLayoutDelegate(),
          child: isLoading
              ? CircularProgressIndicator(value: null)
              : Image.asset(AssetPathConstant.imageScan),
        );
}

class _LoadingLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) {
    print('getSize constraints = $constraints');
    return super.getSize(constraints);
    //获取父容器约束条件
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    //是否需要relayout
    return false;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    //确定child的约束，用于确定child的大小
    print('getConstraintsForChild constraints = $constraints ');
    var childWidth = min(constraints.maxWidth, constraints.maxHeight);
    var childBoxConstraints = BoxConstraints.tight(
      Size(childWidth / 2, childWidth / 2),
    );
    print('getConstraintsForChild childBoxConstraints = $childBoxConstraints ');
    return childBoxConstraints;
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // 确定child的位置，返回一个相对于parent的偏移值
    // size是layout的大小，由getSize确定
    // childSize由getConstraintsForChild得出的Constraints对child进行约束，得到child自身的size
    print('size = $size childSize = $childSize');
    var dx = (size.width - childSize.width) / 2;
    var dy = (size.height - childSize.height) / 2;
    print('dx = $dx dy = $dy');
    return Offset(dx, dy);
  }
}

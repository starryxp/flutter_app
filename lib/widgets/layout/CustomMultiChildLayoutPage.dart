import 'package:flutter/material.dart';

class CustomMultiChildLayoutPage extends StatelessWidget {
  final _tip = '''
1.CustomMultiChildLayout介绍
使用一个委托来对多个孩子进行设置大小和定位的小部件
2.CustomMultiChildLayout属性
- delegate：MultiChildLayoutDelegate
- children = const <Widget>[]：LayoutId
3.LayoutId属性
- id：子组件id
- child：
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomMultiChildLayout'),
      ),
      body: _MyMultiChildLayout(
        children: [
          LayoutId(
            id: 'A',
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
          LayoutId(
            id: 'B',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          LayoutId(
            id: 'C',
            child: Container(
              width: 50,
              height: 120,
              color: Colors.amber,
            ),
          ),
          LayoutId(
            id: 'D',
            child: Container(
              width: 120,
              height: 50,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyMultiChildLayout extends CustomMultiChildLayout {
  _MyMultiChildLayout({
    Key key,
    List<Widget> children = const <Widget>[],
  }) : super(
            key: key,
            delegate: _MyMultiChildLayoutDelegate(children),
            children: children);
}

class _MyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  List<String> layoutIds;
  Map<String, Size> sizeMap = {};

  _MyMultiChildLayoutDelegate(List<Widget> children) {
    layoutIds = _getLayoutIds(children);
  }

  _getLayoutIds(List<Widget> children) {
    return children.map((e) {
      return (e as LayoutId).id as String;
    }).toList();
  }

  @override
  void performLayout(Size size) {
    //布局子组件
    print('performLayout size = $size');
    for (String id in layoutIds) {
      if (hasChild(id)) {
        sizeMap[id] = layoutChild(id, BoxConstraints());
        switch (id) {
          case 'A':
            positionChild(id, Offset.zero);
            break;
          case 'B':
            positionChild(id, Offset(sizeMap['A'].width, 0));
            break;
          case 'C':
            positionChild(id, Offset(0, sizeMap['A'].height));
            break;
          case 'D':
            positionChild(id, Offset(sizeMap['C'].width, sizeMap['B'].height));
            break;
        }
      }
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    print('shouldRelayout');
    sizeMap.clear();
    return true;
  }

  @override
  void positionChild(Object childId, Offset offset) {
    //定位子组件
    super.positionChild(childId, offset);
  }

  @override
  Size layoutChild(Object childId, BoxConstraints constraints) {
    //确定child的约束，用于确定child的大小
    print('layoutChild childId = $childId constraints = $constraints');
    return super.layoutChild(childId, constraints);
  }

  @override
  Size getSize(BoxConstraints constraints) {
    //获取父容器约束条件确定CustomSingleChildLayout大小
    print('getSize constraints = $constraints');
    return super.getSize(constraints);
  }

  @override
  String toString() {
    return super.toString();
  }

  @override
  bool hasChild(Object childId) {
    //子组件是否存在
    return super.hasChild(childId);
  }
}

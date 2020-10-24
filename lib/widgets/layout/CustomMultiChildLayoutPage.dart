import 'package:flutter/material.dart';

class CustomMultiChildLayoutPage extends StatelessWidget {
  final _tip = '''
1.CustomMultiChildLayout介绍
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
      body: CustomMultiChildLayout(
        delegate: _MyMultiChildLayoutDelegate(),
        children: [
          LayoutId(
            id: '0',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          LayoutId(
            id: '1',
            child: Container(
              width: 200,
              height: 120,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {}

  @override
  void positionChild(Object childId, Offset offset) {}

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
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return false;
  }

  @override
  String toString() {
    return super.toString();
  }

  @override
  bool hasChild(Object childId) {
    return super.hasChild(childId);
  }
}

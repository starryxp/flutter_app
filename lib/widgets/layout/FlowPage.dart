import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as Vector;

class FlowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage>
    with SingleTickerProviderStateMixin {
  final _tip = '''
1.Flow介绍
一个实现流式布局算法的widget
2.Flow属性
- delegate：FlowDelegate
- children = const <Widget>[]：
  ''';

  _myChildren() {
    return [
      Container(
        color: Colors.cyan,
        width: 80,
        height: 50,
      ),
      Container(
        color: Colors.red,
        width: 150,
        height: 50,
      ),
      Container(
        color: Colors.yellow,
        width: 200,
        height: 50,
      ),
      Container(
        color: Colors.blue,
        width: 300,
        height: 50,
      ),
      Container(
        color: Colors.grey,
        width: 110,
        height: 50,
      ),
      Container(
        color: Colors.green,
        width: 180,
        height: 50,
      ),
    ];
  }

  AnimationController _animationController;
  double scale = 0;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 3000), vsync: this);
    _animationController.addListener(() {
      setState(() {
        scale = _animationController.value * 2;
        print("scale = $scale");
      });
    });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow'),
      ),
      // body: Flow(
      //   delegate: _MyFlowDelegate(),
      //   children: _myChildren(),
      // ),
      body: Flow(
        delegate: _MyAnimFlowDelegate(scale),
        children: [
          Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          ),
          InkWell(
            onTap: () {
              _animationController.reset();
              _animationController.forward();
            },
          )
        ],
      ),
    );
  }
}

class _MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    var dx = 0.0;
    var dy = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      if (dx + context.getChildSize(i).width < context.size.width) {
      } else {
        dx = 0;
        dy += context.getChildSize(i).height;
      }
      context.paintChild(
        i,
        transform: Matrix4.compose(
          Vector.Vector3(dx, dy, 0),
          Vector.Quaternion(0, 0, 0, 0),
          Vector.Vector3(1, 1, 1),
        ),
      );
      dx += context.getChildSize(i).width;
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    //获取父容器约束条件确定Flow大小
    print('getSize constraints = $constraints');
    return super.getSize(constraints);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    //确定child的约束，用于确定child的大小
    print('getConstraintsForChild constraints = $constraints ');
    return super.getConstraintsForChild(i, constraints);
  }

  @override
  bool shouldRelayout(FlowDelegate oldDelegate) {
    //是否需要relayout
    return false;
  }
}

class _MyAnimFlowDelegate extends FlowDelegate {
  _MyAnimFlowDelegate(this.scale);

  final double scale;

  @override
  void paintChildren(FlowPaintingContext context) {
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(
        i,
        transform: Matrix4.compose(
          Vector.Vector3(0, 0, 0),
          Vector.Quaternion(0, 0, 0, 0),
          Vector.Vector3(scale, scale, 1),
        ),
      );
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    //获取父容器约束条件确定Flow大小
    print('getSize constraints = $constraints');
    return super.getSize(constraints);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    //确定child的约束，用于确定child的大小
    print('getConstraintsForChild constraints = $constraints ');
    return super.getConstraintsForChild(i, constraints);
  }

  @override
  bool shouldRelayout(FlowDelegate oldDelegate) {
    //是否需要relayout
    return false;
  }
}

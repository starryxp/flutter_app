import 'package:flutter/material.dart';
import 'dart:math' as dartMath;

class TransformPage extends StatelessWidget {
  final _tip = '''
1.Transform介绍
可以在其子组件绘制前对其应用一些矩阵变换来实现一些特效。
这里需要注意的是这种变换特效是应用在绘制阶段而不是布局阶段，也就是说子控件虽然进行了变换，但是他所占用的实际空间，位置等都是固定不变的，只是视觉上改变了。
2.Transform.rotate属性
- angle：旋转弧度 注意这里不是角度，需要将角度转为弧度，180度 = π弧度 即1度＝π/180 弧度
- origin：以某一个原点旋转，这个是相对于alignment位置所设置的Offset的偏移点为原点旋转
- alignment = Alignment.center：以alignment位置为原点旋转
- child：
3.Transform.translate
- offset：Offset
- child：
4.Transform.scale
- scale：缩放系数
- origin：以某一个原点缩放，这个是相对于alignment位置所设置的Offset的偏移点为原点缩放
- alignment = Alignment.center：以alignment位置为原点缩放
- child：
5.Transform
- transform：Matrix4
- origin：
- alignment：
- child：
  ''';

  _myChild() {
    return Text(
      'Hello Flutter',
      style: TextStyle(
        backgroundColor: Colors.blue,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }

  _myTransformRotate() {
    return Stack(
      children: [
        Center(
          child: _myChild(),
        ),
        Center(
          child: Transform.rotate(
            angle: dartMath.pi * 0.25,
            alignment: Alignment.center,
            child: _myChild(),
          ),
        ),
        Center(
          child: Transform.rotate(
            angle: dartMath.pi * 0.25,
            origin: Offset(50, 50),
            alignment: Alignment.center,
            child: _myChild(),
          ),
        ),
        Center(
          child: Transform.rotate(
            angle: dartMath.pi * 0.25,
            alignment: null,
            child: _myChild(),
          ),
        ),
      ],
    );
  }

  _myTransformTranslate() {
    return Stack(
      children: [
        Center(
          child: Transform.translate(
            offset: Offset(0, 0),
            child: _myChild(),
          ),
        ),
        Center(
          child: Transform.translate(
            offset: Offset(50, 50),
            child: _myChild(),
          ),
        ),
      ],
    );
  }

  _myTransformScale() {
    return Stack(
      children: [
        Center(
          child: Transform.scale(
            scale: 2,
            origin: Offset(50, 50),
            alignment: Alignment.center,
            child: _myChild(),
          ),
        ),
        Center(
          child: Transform.scale(
            scale: 2,
            alignment: Alignment.center,
            child: _myChild(),
          ),
        ),
        Center(
          child: Transform.scale(
            scale: 1,
            alignment: Alignment.center,
            child: _myChild(),
          ),
        ),
      ],
    );
  }

  _myTransform(Matrix4 transform) {
    return Center(
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: _myChild(),
      ),
    );
  }

  _myRow() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 2,
            alignment: Alignment.center,
            child: _myChild(),
          ),
          _myChild()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
      ),
      // body: _myTransformRotate(),
      // body: _myTransformTranslate(),
      // body: _myTransformScale(),
      // body: _myTransform(Matrix4.rotationX(dartMath.pi)),
      body: _myRow(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vectorMath;
import 'dart:math' as dartMath;

class Matrix4Page extends StatelessWidget {
  final _tip = '''
1.平移
- Matrix4.translation(Vector3 translation)
- Matrix4.translationValues(double x, double y, double z)
2.旋转
- Matrix4.rotationX(double radians)
- Matrix4.rotationY(double radians)
- Matrix4.rotationZ(double radians)
3.缩放
- Matrix4.diagonal3(Vector3 scale)
- Matrix4.diagonal3Values(double x, double y, double z)
4.扭曲
- Matrix4.skewX(double alpha)
- Matrix4.skewY(double beta)
- Matrix4.skew(double alpha, double beta)
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

  _myTransform(Matrix4 transform) {
    return Center(
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: _myChild(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matrix4矩阵变换'),
      ),
      // body: _myTransform(Matrix4.translationValues(-50, 20, 0)),
      // body: _myTransform(Matrix4.translation(vectorMath.Vector3(-50, 20, 0))),
      // body: _myTransform(
      //     Matrix4.translation(vectorMath.Vector3.array([-50, 20, 0]))),
      // body: _myTransform(
      //     Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -50, 20, 0, 1)),
      // body: _myTransform(Matrix4.fromList(
      //     [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -50, 20, 0, 1])),
      // body: _myTransform(Matrix4.rotationX(dartMath.pi * -0.25)),
      // body: _myTransform(Matrix4.rotationY(dartMath.pi * 0.25)),
      // body: _myTransform(Matrix4.rotationZ(dartMath.pi * 0.25)),
      // body: _myTransform(Matrix4.diagonal3(vectorMath.Vector3(2, 4, 0))),
      // body: _myTransform(Matrix4.diagonal3(vectorMath.Vector3(2, -0.8, 0))),
      // body: _myTransform(Matrix4.skewX(dartMath.pi * 0.25)),
      // body: _myTransform(Matrix4.skewY(dartMath.pi * 0.25)),
      body: _myTransform(Matrix4.skew(dartMath.pi * 0.2,dartMath.pi * 0.1)),
    );
  }
}

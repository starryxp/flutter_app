import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class StackPage extends StatelessWidget {
  final _tip = '''
1.简介
- Stack：可以允许其子widget简单的堆叠在一起
- Positioned：Stack内定位的组件
2.Stack属性
- alignment = AlignmentDirectional.topStart：只作用于没有使用Positioned或部分定位的子组件
- textDirection：文本方向
- fit = StackFit.loose：子组件如何去适应Stack的大小，只作用于没有使用Positioned的子组件
- overflow = Overflow.clip：如何显示超出Stack显示空间的子组件；Overflow.clip：超出部分会被剪裁（隐藏），Overflow.visible时则不会。这个属性即将被废弃，会被clipBehavior代替
- clipBehavior = Clip.hardEdge：
- children = const <Widget>[]：
3.AlignmentDirectional
这跟Alignment基本上是一样的，只是AlignmentDirectional可以根据TextDirection去改变哪边再是start方向
3.StackFit属性
- StackFit.loose：使用子组件的大小，只作用于没有使用Positioned的子组件
- StackFit.expand：扩伸到Stack的大小，只作用于没有使用Positioned的子组件
- StackFit.passthrough：传递使用Stack的父级约束,只作用于没有使用Positioned的子组件
4.Clip属性
- Clip.none：不做处理
- Clip.hardEdge：裁剪但不应用抗锯齿，速度比none慢一点
- Clip.antiAlias：裁剪而且抗锯齿，速度慢于hardEdge
- Clip.antiAliasWithSaveLayer：裁剪、抗锯齿而且有一个缓冲区，速度最慢
5.Positioned属性
- left：距左
- top：距上
- right：距右
- bottom：距下
- width：宽度
- height：高度
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack、Positioned'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(50),
        child: Container(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
          ),
          color: Colors.blue,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: Image.asset(AssetPathConstant.imageScan),
              ),
              Positioned(
                bottom: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
              Positioned(
                left: 10,
                top: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
              ),
              Positioned(
                left: 100,
                width: 50,
                top: 20,
                height: 50,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              Positioned(
                left: 10,
                top: 20,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

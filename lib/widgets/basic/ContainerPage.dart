import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  final tip = '''
  1.1 组成
    Container的组成如下：
    最里层的是child元素；
    child元素首先会被padding包着；
    然后添加额外的constraints限制；
    最后添加margin。
    Container的绘制的过程如下：
    首先会绘制transform效果；
    接着绘制decoration；
    然后绘制child；
    最后绘制foregroundDecoration。
    Container自身尺寸的调节分两种情况：
    Container在没有子节点（children）的时候，
    会试图去变得足够大。
    除非constraints是unbounded限制，
    在这种情况下，Container会试图去变得足够小。
    带子节点的Container，会根据子节点尺寸调节自身尺寸，
    但是Container构造器中如果包含了
    width、height以及constraints，
    则会按照构造器中的参数来进行尺寸的调节。
  1.2 布局行为
    由于Container组合了一系列的widget，
    这些widget都有自己的布局行为，
    因此Container的布局行为有时候是比较复杂的。
    一般情况下，Container会遵循如下顺序去尝试布局：
    对齐（alignment）；
    调节自身尺寸适合子节点；
    采用width、height以及constraints布局；
    扩展自身去适应父节点；
    调节自身到足够小。
    进一步说：
    如果没有子节点、没有设置width、
    height以及constraints，
    并且父节点没有设置unbounded的限制，
    Container会将自身调整到足够小。
    如果没有子节点、对齐方式（alignment），
    但是提供了width、height或者constraints，
    那么Container会根据自身以及父节点的限制，
    将自身调节到足够小。
    如果没有子节点、
    width、height、constraints以及alignment，
    但是父节点提供了bounded限制，
    那么Container会按照父节点的限制，
    将自身调整到足够大。
    如果有alignment，
    父节点提供了unbounded限制，
    那么Container将会调节自身尺寸来包住child；
    如果有alignment，
    并且父节点提供了bounded限制，
    那么Container会将自身调整的足够大
    （在父节点的范围内），
    然后将child根据alignment调整位置；
    含有child，但是没有width、height、
    constraints以及alignment，
    Container会将父节点的constraints传递给child，
    并且根据child调整自身。
  ''';

  //定义一个redBox，只设置颜色，不指定宽高
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Container：一个拥有绘制、定位、调整大小的 widget。'
                  ''),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.yellow,
              ),
            ),
            Container(
//                margin: EdgeInsets.all(10),
//                constraints: BoxConstraints.expand(
//                    height: 200),
//                constraints: BoxConstraints(
//                    minWidth: double.infinity, //宽度尽可能大
//                    minHeight: 150 //最小高度为50像素
//                    ),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text(
                'Hello World',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
              transform: Matrix4.rotationZ(0.1),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              //Container的高度设置为10像素，但是最终却是50像素，这正是ConstrainedBox的最小高度限制50生效了。
              //如果将Container的高度设置为180像素，但最终红色区域的高度会是80像素，这正是ConstrainedBox的最大高度限制80生效了。
              //BoxConstraints.tight(Size size)，它可以生成给定大小的限制
              //BoxConstraints.expand()可以生成一个尽可能大的用以填充另一个容器
              constraints: BoxConstraints(
                  minWidth: double.infinity, //最小宽度宽度尽可能大
                  minHeight: 50, //最大高度50像素
                  maxHeight: 80),
              child: Container(
                width: 50,
                height: 10,
//                  height: 180,
                child: redBox,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints.tight(Size(80, 80)),
              child: redBox,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                tip,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ));
  }
}

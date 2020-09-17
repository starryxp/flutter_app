import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  final tip = '''
  1.1 简介
    在Flutter中非常常见的一个多子节点控件，将children排列成一行。
    估计是借鉴了Web中Flex布局，所以很多属性和表现，都跟其相似。
    但是注意一点，自身不带滚动属性，如果超出了一行，在debug下面则会显示溢出的提示。
  1.2 布局行为
    Row的布局有六个步骤，这种布局表现来自Flex（Row和Column的父类）：
    首先按照不受限制的主轴（main axis）约束条件，对flex为null或者为0的child进行布局，
    然后按照交叉轴（ cross axis）的约束，对child进行调整；
    按照不为空的flex值，将主轴方向上剩余的空间分成相应的几等分；
    对上述步骤flex值不为空的child，在交叉轴方向进行调整，在主轴方向使用最大约束条件，让其占满步骤2所分得的空间；
    Flex交叉轴的范围取自子节点的最大交叉轴；
    主轴Flex的值是由mainAxisSize属性决定的，其中MainAxisSize可以取max、min以及具体的value值；
    每一个child的位置是由mainAxisAlignment以及crossAxisAlignment所决定。
    Row的布局行为表面上看有这么多个步骤，其实也还算是简单，可以完全参照web中的Flex布局，包括主轴、交叉轴等概念。
  1.3 属性解析
    MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。其中MainAxisAlignment枚举值：
    center：将children放置在主轴的中心；
    end：将children放置在主轴的末尾；
    spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2；
    spaceBetween：将主轴方向上的空白区域均分，使得children之间的空白区域相等，首尾child都靠近首尾，没有间隙；
    spaceEvenly：将主轴方向上的空白区域均分，使得children之间的空白区域相等，包括首尾child；
    start：将children放置在主轴的起点；
    其中spaceAround、spaceBetween以及spaceEvenly的区别，就是对待首尾child的方式。其距离首尾的距离分别是空白区域的1/2、0、1。
    MainAxisSize：在主轴方向占有空间的值，默认是max。
    MainAxisSize的取值有两种：
    max：根据传入的布局约束条件，最大化主轴方向的可用空间；
    min：与max相反，是最小化主轴方向的可用空间；
    CrossAxisAlignment：children在交叉轴方向的对齐方式，与MainAxisAlignment略有不同。
    CrossAxisAlignment枚举值有如下几种：
    baseline：在交叉轴方向，使得children的baseline对齐；
    center：children在交叉轴上居中展示；
    end：children在交叉轴上末尾展示；
    start：children在交叉轴上起点处展示；
    stretch：让children填满交叉轴方向；
    TextDirection：阿拉伯语系的兼容设置，一般无需处理。
    VerticalDirection：定义了children摆放顺序，默认是down。
    VerticalDirection枚举值有两种：
    down：从top到bottom进行布局；
    up：从bottom到top进行布局。
    top对应Row以及Column的话，就是左边和顶部，bottom的话，则是右边和底部。
    TextBaseline：使用的TextBaseline的方式，有两种，前面已经介绍过。
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Row：在水平方向上排列子widget的列表。'),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Deliver features faster',
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Craft beautiful UIs',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: FlutterLogo(),
                  flex: 2,
                ),
                FlutterLogo(),
                FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: FlutterLogo(),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                FlutterLogo(),
                Text(
                  '111111111111111111111111111111111111111111111111111111111111111111111111',
                  textAlign: TextAlign.center,
                ),
                Icon(Icons.add_shopping_cart)
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                FlutterLogo(),
                Expanded(
                  child: Text(
                    '111111111111111111111111111111111111111111111111111111111111111111111111',
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(Icons.add_shopping_cart)
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.start,
//              mainAxisAlignment: MainAxisAlignment.end,
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.red,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(tip),
          ),
        ],
      ),
    );
  }
}

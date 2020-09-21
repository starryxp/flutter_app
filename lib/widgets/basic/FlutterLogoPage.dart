import 'package:flutter/material.dart';

class FlutterLogoPage extends StatelessWidget {

  final _tip = '''
    1.Flutter logo, 以widget形式. 这个widget遵从IconTheme。
    一般情况似乎用不上
    2.属性介绍
    size,//设置大小
    colors,//设置颜色
    textColor = const Color(0xFF616161),//用于在徽标上绘制“Flutter”文本的颜色，如果样式为 FlutterLogoStyle.horizntal或FlutterLogoStyle.stacked。适当的颜色是const Color(0xFF616161)（中灰色），白色背景。
    style = FlutterLogoStyle.markOnly,//是否以及在何处绘制“颤动”文本。默认情况下，仅绘制徽标本身
    duration = const Duration(milliseconds: 750),//如果更改样式，颜色或 textColor属性，则动画的时间长度
    curve = Curves.fastOutSlowIn,//如果样式，颜色或textColor 发生更改，则会生成徽标动画的曲线。
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterLogo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('FlutterLogo：Flutter logo, 以widget形式. 这个widget遵从IconTheme。'),
          FlutterLogo(
            size: 100,
            textColor: Colors.red,
            duration: Duration(milliseconds: 3000),
            style: FlutterLogoStyle.stacked,
            curve: Curves.bounceIn,
          ),
          Text(_tip),
        ],
      ),
    );
  }
}

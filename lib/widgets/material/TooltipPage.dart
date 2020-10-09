import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  final _tip = '''
1.Tooltip介绍
- 一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。
- 继承于StatefulWidget的一个Widget，它并不需要调出方法，当用户长按被Tooltip包裹的Widget时，会自动弹出相应的操作提示。
2.Tooltip属性
- message：文字
- height：高度
- padding：内边距
- margin：外边距
- verticalOffset：垂直方向偏移量
- preferBelow：是否显示在控件下方
- decoration：BoxDecoration 装饰
- textStyle：文字样式
- showDuration：显示时长
- child：子节点
  ''';

  @override
  State<StatefulWidget> createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  _myTooltip(String s) {
    return Tooltip(
      message: s,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 100),
      verticalOffset: 10,
      // preferBelow: false,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      showDuration: Duration(seconds: 5),
      child: Text(s),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
      ),
      body: Center(
        child: _myTooltip('Tooltip'),
      ),
    );
  }
}

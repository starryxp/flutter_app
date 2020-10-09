import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldPage extends StatefulWidget {
  final _tip = '''
1.介绍
- CupertinoPageScaffold：一个iOS风格的页面的基本布局结构。包含内容和导航栏
- CupertinoNavigationBar：iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用。
2.CupertinoPageScaffold
- navigationBar：顶部导航栏
- backgroundColor：背景色
- resizeToAvoidBottomInset = true：键盘弹出页面是否被顶起
- child：
3.CupertinoNavigationBar
- leading：左边组件
- middle：中间组件
- trailing：右边组件
- border = _kDefaultNavBarBorder：边框
- backgroundColor：背景色
- brightness：
- padding：边距
- actionsForegroundColor：actions颜色
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoPageScaffoldPageState();
}

class _CupertinoPageScaffoldPageState extends State<CupertinoPageScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // leading: Icon(Icons.arrow_back),
        trailing: Icon(Icons.more_vert),
        backgroundColor: Colors.blue,
        padding: EdgeInsetsDirectional.zero,
        actionsForegroundColor: Colors.white,
        middle: Text('CupertinoPageScaffold'),
      ),
      backgroundColor: Colors.white,
      child: Center(
        child: Text(
          'CupertinoPageScaffold',
          style: TextStyle(
            color: Colors.black,
            // decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

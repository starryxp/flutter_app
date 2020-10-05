import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogPage extends StatefulWidget {
  final tip = '''
1.CupertinoAlertDialog介绍
iOS风格的alert dialog.
2.CupertinoAlertDialog属性
- title：标题
- content：内容
- actions = const <Widget>[]：actions
- scrollController：控制器
- actionScrollController：action控制器
- insetAnimationDuration = const Duration(milliseconds: 100)：动画时长
- insetAnimationCurve = Curves.decelerate：动画显示的曲线
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoAlertDialogPageState();
}

class _CupertinoAlertDialogPageState extends State<CupertinoAlertDialogPage> {
  _myCupertinoAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('title'),
          content: Text('content'),
          actions: [
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          insetAnimationDuration: Duration(seconds: 2),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoAlertDialog'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _myCupertinoAlertDialog(context);
          },
          child: Text('CupertinoAlertDialog'),
        ),
      ),
    );
  }
}

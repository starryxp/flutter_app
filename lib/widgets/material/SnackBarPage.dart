import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  final tip = '''
1.SnackBar介绍
具有可选操作的轻量级消息提示，在屏幕的底部显示。
2.SnackBar属性
- content：内容
- backgroundColor：背景色
- elevation：阴影
- shape：形状
- behavior：位置
- action：SnackBarAction
- duration：显示时长
- onVisible：显示回调
  ''';

  @override
  State<StatefulWidget> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  _showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('showSnackBar'),
        backgroundColor: Colors.black54,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: '知道了',
          onPressed: () {
            Scaffold.of(context).removeCurrentSnackBar();
          },
        ),
        duration: Duration(seconds: 5),
        onVisible: () {
          print('onVisible');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(builder: (context) {
        return RaisedButton(
          onPressed: () {
            _showSnackBar(context);
          },
          child: Text('showSnackBar'),
        );
      }),
    );
  }
}

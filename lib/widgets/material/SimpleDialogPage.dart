import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class SimpleDialogPage extends StatefulWidget {
  final _tip = '''
1.SimpleDialog介绍
简单对话框可以显示附加的提示或操作
2.SimpleDialog属性
- title：标题
- titlePadding：EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0)，标题内边距
- titleTextStyle：标题样式
- children：
- contentPadding：EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0)，内容内边距
- backgroundColor：背景色
- elevation：阴影
- shape：形状
3.SimpleDialogOption属性
- onPressed：点击事件
- padding：内边距
- child：
  ''';

  @override
  State<StatefulWidget> createState() => _SimpleDialogPageState();
}

class _SimpleDialogPageState extends State<SimpleDialogPage> {
  SimpleDialog _dialog;

  _createSimpleDialogOption(String s) {
    return SimpleDialogOption(
      onPressed: () {
        ToastUtil.showToast(s);
      },
      padding: EdgeInsets.all(10),
      child: Text(s),
    );
  }

  _createSimpleDialog() {
    return SimpleDialog(
      title: Text('SimpleDialog'),
      titleTextStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
      children: [
        Text(
          "data",
          textAlign: TextAlign.center,
        ),
        _createSimpleDialogOption('内容1'),
        _createSimpleDialogOption('内容2'),
        _createSimpleDialogOption('内容3'),
        _createSimpleDialogOption('内容4'),
        Icon(Icons.account_circle),
        SimpleDialogOption(
          onPressed: () {},
          padding: EdgeInsets.all(10),
          child: Icon(Icons.headset),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          RaisedButton(
            onPressed: () {
              if (_dialog == null) {
                _dialog = _createSimpleDialog();
              }
              showDialog(
                context: context,
                builder: (context) {
                  return _dialog;
                },
              );
            },
            child: Text('打开SimpleDialog'),
          )
        ],
      ),
    );
  }
}

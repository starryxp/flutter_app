import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  final tip = '''
1.AlertDialog介绍
一个会中断用户操作的对话款，需要用户确认
2.AlertDialog属性
- title：标题  
- titlePadding：标题内边距
- titleTextStyle：标题样式
- content：内容，推荐用SingleChildScrollView包裹
- contentPadding：EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0)，内容内边距
- contentTextStyle：内容样式
- actions：按钮
- actionsPadding：EdgeInsets.zero，actions内边距
- buttonPadding：按钮内边距
- backgroundColor：背景色
- elevation：阴影
- shape：形状
- scrollable = false：
  ''';

  @override
  State<StatefulWidget> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  AlertDialog _dialog;

  _createAlertDialog() {
    return AlertDialog(
      title: Text(
        '我是标题',
        textAlign: TextAlign.center,
      ),
      titlePadding: EdgeInsets.all(10),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text('内容1'),
              Text('内容2'),
            ],
          ),
        ),
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      actions: [
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('取消'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('确定'),
        ),
      ],
      actionsPadding: EdgeInsets.all(10),
      actionsOverflowButtonSpacing: 10,
      backgroundColor: Colors.white,
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          RaisedButton(
            onPressed: () {
              if (_dialog == null) {
                _dialog = _createAlertDialog();
              }
              showDialog(
                context: context,
                builder: (context) {
                  return _dialog;
                },
              );
            },
            child: Text('打开AlertDialog'),
          )
        ],
      ),
    );
  }
}

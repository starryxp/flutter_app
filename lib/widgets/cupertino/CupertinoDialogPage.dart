import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogPage extends StatefulWidget {
  final tip = '''
1.介绍
- CupertinoDialog：了解一下，已过时，推荐使用CupertinoPopupSurface
- CupertinoPopupSurface：
2.属性
- CupertinoDialog
  - child：
- CupertinoPopupSurface
  - child：
  - isSurfacePainted：是否使用白色模糊层
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoDialogPageState();
}

class _CupertinoDialogPageState extends State<CupertinoDialogPage> {
  _myCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoDialog(
          child: _myDialog(),
        );
      },
    );
  }

  _myCupertinoPopupSurface(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoPopupSurface(
            isSurfacePainted: true,
            child: Center(
              child: _myDialog(),
            ),
          );
        });
  }

  _myDialog() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Title',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'content',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: CupertinoButton.filled(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '取消',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: CupertinoButton.filled(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '确定',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoDialog/CupertinoPopupSurface'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          CupertinoButton.filled(
            child: Text('CupertinoDialog'),
            onPressed: () {
              _myCupertinoDialog(context);
            },
          ),
          CupertinoButton.filled(
            child: Text('CupertinoPopupSurface'),
            onPressed: () {
              _myCupertinoPopupSurface(context);
            },
          ),
        ],
      ),
    );
  }
}

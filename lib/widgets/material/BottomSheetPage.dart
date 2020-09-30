import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  final tip = '''
1.BottomSheet介绍
- showBottomSheet：从底部滑出的widget
- showModalBottomSheet：从底部滑出的widget，这个比showBottomSheet在显示多一个遮盖背景
2.showBottomSheet属性
- context：BuildContext
- builder：WidgetBuilder
- backgroundColor：背景色
- elevation：阴影
- shape：形状
3.showModalBottomSheet属性
- context：BuildContext
- builder：WidgetBuilder
- backgroundColor：背景色
- elevation：阴影
- shape：形状
- barrierColor：遮盖背景颜色
- isDismissible：点击遮盖背景是否可消失
- enableDrag：下滑消失
  ''';

  @override
  State<StatefulWidget> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  _myBottomSheet(String s) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              s,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              '知道了',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  _showBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return _myBottomSheet('showBottomSheet');
      },
      backgroundColor: Colors.black54,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return _myBottomSheet('showModalBottomSheet');
      },
      backgroundColor: Colors.black54,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      // barrierColor: Colors.amber.shade100,
      isDismissible: false,
      enableDrag: true,
    );
  }

  _scaffoldShowBottomSheet(BuildContext context) {
    Scaffold.of(context).showBottomSheet(
      (context) {
        return _myBottomSheet('scaffoldShowBottomSheet');
      },
      backgroundColor: Colors.black54,
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
        title: Text('BottomSheet'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Builder(builder: (context) {
            return RaisedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: Text('showBottomSheet'),
            );
          }),
          Builder(builder: (context) {
            return RaisedButton(
              onPressed: () {
                _scaffoldShowBottomSheet(context);
              },
              child: Text('scaffoldShowBottomSheet'),
            );
          }),
          RaisedButton(
            onPressed: () {
              _showModalBottomSheet(context);
            },
            child: Text('showModalBottomSheet'),
          ),
        ],
      ),
    );
  }
}

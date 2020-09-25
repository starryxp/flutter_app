import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class MaterialButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialButton'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                ' RaisedButton,FlatButton,OutlineButton,IconButton,ButtonBar,FloatingActionButton在基础章节讲过，请查看:'),
            RaisedButton(
              child: Text('跳转'),
              onPressed: () {
                Navigator.pushNamed(context, Constant.widgetsBasicButtonPage);
              },
            ),
            Text('PopupMenuButton在基础章节Appbar中介绍过：'),
            RaisedButton(
              child: Text('跳转'),
              onPressed: () {
                Navigator.pushNamed(context, Constant.widgetsBasicAppbarPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}

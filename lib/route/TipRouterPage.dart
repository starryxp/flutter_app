import 'package:flutter/material.dart';

class TipRouterPage extends StatelessWidget {
  TipRouterPage({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('提示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                child: Text('返回'),
                onPressed: () {
                  Navigator.pop(context, "我是返回值");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

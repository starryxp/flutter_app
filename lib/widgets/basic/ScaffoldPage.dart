import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
      ),
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Text('Scaffold body'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          ToastUtil.showToast('++++');
        },
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(children: [
            Expanded(
                child: Text(
              '首页',
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              '资讯',
              textAlign: TextAlign.center,
            )),
            Expanded(child: SizedBox()),
            Expanded(
                child: Text(
              '消息',
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              '个人',
              textAlign: TextAlign.center,
            )),
          ]),
        ),
      ),
    );
  }
}

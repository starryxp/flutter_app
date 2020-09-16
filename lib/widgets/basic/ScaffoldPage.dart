import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        elevation: 10,
//        leading: Icon(Icons.arrow_back),
//        actions: [Icon(Icons.more_vert)],
        bottom: PreferredSize(
          child: Container(
            height: 50.0,
            child: Center(
              child: Text('显示在标题下面的内容'),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Text('''
Scaffold：Material Design布局结构的基本实现。此类提供了用于显示drawer、SnackBar和底部sheet的API。
主要的属性说明
    appBar：显示在界面顶部的一个 AppBar
    body：当前界面所显示的主要内容
    floatingActionButton： 在 Material 中定义的一个功能按钮。
    persistentFooterButtons：固定在下方显示的按钮。
    drawer：侧边栏控件
    bottomNavigationBar：显示在底部的导航栏按钮栏。可以查看文档：Flutter学习之制作底部菜单导航
    backgroundColor：背景颜色
    resizeToAvoidBottomPadding： 控制界面内容 body
    是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
            '''),
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(
//          Icons.add,
//          color: Colors.white,
//        ),
//        onPressed: () {
//          ToastUtil.showToast('++++');
//        },
//        backgroundColor: Colors.blue,
//      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            var snackBar = SnackBar(
              content: Text('snackBar内容,显示时长1S'),
              backgroundColor: Colors.black54,
              duration: Duration(seconds: 1),
              action: SnackBarAction(
                  label: 'SnackBarAction',
                  onPressed: () {
                    ToastUtil.showToast('SnackBarAction');
                  }),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          backgroundColor: Colors.blue,
        );
      }),
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
//      drawer: Container(
//        child: Text('drawer'),
//      ),
      endDrawer: Container(
        width: 200,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: Text('endDrawer'),
        ),
      ),
//      persistentFooterButtons: [
//        Icon(Icons.person),
//        Icon(Icons.add),
//        Icon(Icons.print),
//        Icon(Icons.apps),
//        Icon(Icons.chat),
//      ],
    );
  }
}

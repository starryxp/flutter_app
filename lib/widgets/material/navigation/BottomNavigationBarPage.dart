import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarPageState();
  }
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var _index = 0;
  final _tip = '''
1.简介
- BottomNavigationBar是属于 Scaffold 中的一个位于底部的控件。通常和 BottomNavigationBarItem 配合使用
2.BottomNavigationBar属性
- items：底部导航栏的显示项，
- onTap：点击导航栏子项时的回调
- currentIndex：当前显示项的下标
- type：底部导航栏的类型，有fixed和shifting两个类型，显示效果不一样
- fixedColor：底部导航栏type为fixed时导航栏的颜色，默认使用ThemeData.primaryColor
- iconSize：BottomNavigationBarItem icon的大小
- backgroundColor：BottomNavigationBar的背景颜色
- selectedFontSize: 选中字体大小
- selectedItemColor: 选中字体颜色
- selectedIconTheme: 选中Icon的主题
- selectedLabelStyle: 选中字体的样式
- unselectedFontSize: 未选中字体大小
- unselectedItemColor: 未选中字体颜色
- unselectedIconTheme: 未选中Icon的主题
- unselectedLabelStyle: 未选中字体的样式
3.BottomNavigationBarItem属性
- icon：要显示的图标控件
- title：要显示的标题控件
- activeIcon：选中时要显示的icon
- backgroundColor：背景颜色，BottomNavigationBarType为shifting时，BottomNavigationBar的背景颜色，会覆盖BottomNavigationBar.backgroundColor
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Center(
        child: Text('index = $_index'),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         title: Text('首页'),
      //         backgroundColor: Colors.amber),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.mail),
      //         title: Text('邮件'),
      //         backgroundColor: Colors.deepPurple),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.message),
      //         title: Text('消息'),
      //         backgroundColor: Colors.green),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.people),
      //         title: Text('我的'),
      //         backgroundColor: Colors.deepOrange),
      //   ],
      //   backgroundColor: Colors.brown,
      //   // type: BottomNavigationBarType.shifting,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _index,
      //   selectedFontSize: 16,
      //   selectedItemColor: Colors.red,
      //   selectedIconTheme: IconThemeData(color: Colors.blue, size: 26),
      //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      //   unselectedFontSize: 14,
      //   unselectedItemColor: Colors.black,
      //   unselectedIconTheme: IconThemeData(color: Colors.black, size: 24),
      //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      //   elevation: 10,
      //   onTap: (index) {
      //     _index = index;
      //     setState(() {});
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(children: [
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.home), Text('首页')],
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.email), Text('邮件')],
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.message), Text('消息')],
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.people), Text('我的')],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

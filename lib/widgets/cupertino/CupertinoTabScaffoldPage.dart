import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/commen/EmailItemPage.dart';
import 'package:flutter_app/commen/HomeItemPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/utils/Constant.dart';

class CupertinoTabScaffoldPage extends StatefulWidget {
  final _tip = '''
1.介绍
- CupertinoTabScaffold：标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上
- CupertinoTabBar：iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用。
- CupertinoTabView：支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用
2.CupertinoTabScaffold
- tabBar：底部选项卡
- tabBuilder：底部选项卡对应的根内容
- controller：控制器
- backgroundColor：背景色
- resizeToAvoidBottomInset = true：键盘是否顶起页面
3.CupertinoTabBar
- items：子widget
- onTap：点击事件
- currentIndex = 0：当前位置
- backgroundColor：背景色
- activeColor：选中颜色
- inactiveColor = _kDefaultTabBarInactiveColor：未选中颜色
- iconSize = 30.0：大小
- border：边框
4.CupertinoTabView
- builder：根内容
- navigatorKey：构建的navigatorKey
- defaultTitle：默认路由标题
- routes：路由表
- onGenerateRoute：路由拦截
- onUnknownRoute：未知路由
- navigatorObservers = const <NavigatorObserver>[]：
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoTabScaffoldPageState();
}

class _CupertinoTabScaffoldPageState extends State<CupertinoTabScaffoldPage> {

  _jump() {
    Navigator.of(context).pushNamed(Constant.homeHomePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoTabScaffold'),
      ),
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('邮件'),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (context) {
              // if (index == 0) {
              //   return HomeItemPage();
              // } else {
              //   return EmailItemPage();
              // }

              return Center(
                child: RaisedButton(
                  onPressed: () {
                    _jump();
                  },
                  child: Text('next'),
                ),
              );
            },
            // routes: {
            //   Constant.homeHomePage: (context) => HomePage(),
            // },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/scaffold/EmailItemPage.dart';
import 'package:flutter_app/scaffold/HomeItemPage.dart';
import 'package:flutter_app/scaffold/MineItemPage.dart';

class ScaffoldHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScaffoldHomePageState();
  }
}

class ScaffoldHomePageState extends State<ScaffoldHomePage> {
  //当前选中页面位置
  num index = 0;

  //定义三个页面
  List<Widget> pageWidgetList = [
    HomeItemPage(),
    EmailItemPage(),
    MineItemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //使用 Scaffold 组件来构建应用的基本页面
    // 页面的架构
    return Scaffold(
      //定义页面标题
      appBar: AppBar(
        title: Text("这是首页"),
      ),
      //定义页面主题内容
      body: pageWidgetList[index],
      //定义悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        //点击事件
        onPressed: () {
          print("点击了 FloatingActionButton");
        },
        //长按提示
        tooltip: "长按提示",
        //设置背景颜色
        backgroundColor: Colors.red,
        //获取焦点时颜色
        focusColor: Colors.green,
        //鼠标悬浮在按钮上显示的颜色
//        hoverColor: Colors.yellow,
        //水波纹颜色
//        splashColor: Colors.deepPurple,
        //前景色
        foregroundColor: Colors.black,
        //阴影高度
        elevation: 0.0,
        //点击时阴影高度
        highlightElevation: 5.0,
      ),
      //用来控制  FloatingActionButton 的位置
      //FloatingActionButtonLocation.endFloat 默认使用 浮动右下角
      //FloatingActionButtonLocation.endDocked 右下角
      //FloatingActionButtonLocation.endTop  右上角
      //FloatingActionButtonLocation.startTop 左上角
      //FloatingActionButtonLocation.centerFloat 底部中间浮动
      //FloatingActionButtonLocation.centerDocked 底部中间不浮动
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      //浮动按钮下面的标签 Widget
      persistentFooterButtons: <Widget>[
        Text(
          "t1",
          style: TextStyle(color: Colors.blue),
        ),
        Text(
          "t2",
          style: TextStyle(color: Colors.blue),
        ),
        Text(
          "t3",
          style: TextStyle(color: Colors.blue),
        ),
      ],
      drawer: Container(
        color: Colors.white,
        width: 120,
        height: 300,
        child: FlatButton(
          child: Text("关闭左滑菜单"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      endDrawer: Container(
        color: Colors.yellow,
        width: 120,
        child: FlatButton(
          child: Text("关闭右滑菜单"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "首页",
              style: TextStyle(
                fontSize: index == 0 ? 14 : 12,
                color: index == 0 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: index == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "邮件",
              style: TextStyle(
                fontSize: index == 1 ? 14 : 12,
                color: index == 1 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: index == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              "我的",
              style: TextStyle(
                fontSize: index == 2 ? 14 : 12,
                color: index == 2 ? Colors.blue : Colors.grey,
              ),
            ),
          )
        ],
        //BottomNavigationBar 的点击事件
        onTap: (flag) {
          print("flag = $flag");
          index = flag;
          setState(() {});
        },
        //当前位置
        currentIndex: index,
      ),
    );
  }
}

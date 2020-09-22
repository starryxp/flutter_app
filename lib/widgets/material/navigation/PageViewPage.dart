import 'package:flutter/material.dart';
import 'package:flutter_app/commen/EmailItemPage.dart';
import 'package:flutter_app/commen/HomeItemPage.dart';
import 'package:flutter_app/commen/MineItemPage.dart';

class PageViewPage extends StatefulWidget {
  //定义三个页面
  final _pageWidgetList = [
    HomeItemPage(),
    EmailItemPage(),
    MineItemPage(),
  ];

  @override
  State<StatefulWidget> createState() => _PageViewPage();
}

class _PageViewPage extends State<PageViewPage>
    with SingleTickerProviderStateMixin {
  var _index = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewPage'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('邮件'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('我的'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        selectedFontSize: 16,
        selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 26),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 14,
        unselectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.black, size: 24),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        elevation: 10,
        onTap: (index) {
          print('onTap: $index');
          _index = index;
          setState(() {
            _pageController.jumpToPage(_index);
          });
        },
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: widget._pageWidgetList,
        controller: _pageController,
        onPageChanged: (index) {
          print('onPageChanged: $index');
          _index = index;
          setState(() {});
        },
        // physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

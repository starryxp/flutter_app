import 'package:flutter/material.dart';
import 'package:flutter_app/commen/EmailItemPage.dart';
import 'package:flutter_app/commen/HomeItemPage.dart';
import 'package:flutter_app/commen/MineItemPage.dart';

class TabBarViewPage extends StatefulWidget {
  final _tabList = [
    Tab(
      text: '首页',
      icon: Icon(Icons.home),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '邮件',
      icon: Icon(Icons.mail),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '我的',
      icon: Icon(Icons.people),
      iconMargin: EdgeInsets.all(5),
    ),
  ];

  //定义三个页面
  final _pageWidgetList = [
    HomeItemPage(),
    EmailItemPage(),
    MineItemPage(),
  ];

  @override
  State<StatefulWidget> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  TabController _tabController;

  @override
  void initState() {
    print('_TabBarViewPageState initState');
    super.initState();
    _tabController = TabController(length: widget._tabList.length, vsync: this);
    _tabController.addListener(() {
      print('_tabController.addListener');
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    print('_TabBarViewPageState build');
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarViewPage'),
        bottom: TabBar(
          tabs: widget._tabList,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: widget._pageWidgetList,
        controller: _tabController,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  @override
  void dispose() {
    print('_TabBarViewPageState dispose');
    _tabController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print('_TabBarViewPageState didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('_TabBarViewPageState deactivate');
  }

  @override
  void didUpdateWidget(TabBarViewPage oldWidget) {
    print('_TabBarViewPageState didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void reassemble() {
    super.reassemble();
    print('_TabBarViewPageState reassemble');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('_TabBarViewPageState didChangeAppLifecycleState $state');
    super.didChangeAppLifecycleState(state);
  }
}

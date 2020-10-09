import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';

class TabBarPage extends StatefulWidget {
  final _tip = '''
  1.TabBar简介
  水平选项卡，配合TabBarView可以实现选项卡跟页面的切换
  2.TabBar属性
  - tabs：显示的标签内容，一般使用Tab对象,也可以自定义
  - controller：TabController对象
  - isScrollable：是否可滚动（默认false），当false时不可滑动会让每个tab平均分配宽度空间；如果true可滑动，每个tab会自适应宽度，不超过父节点宽度会居中显示
  - indicatorColor：指示器颜色
  - indicatorWeight：指示器高度
  - indicatorPadding：底部指示器的Padding
  - indicator：指示器decoration，例如边框等
  - indicatorSize：指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
  - labelColor：选中label颜色
  - labelStyle：选中label的Style
  - labelPadding：每个label的padding值
  - unselectedLabelColor：未选中label颜色
  - unselectedLabelStyle：未选中label的Style
  ''';
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
      text: '消息',
      icon: Icon(Icons.message),
      iconMargin: EdgeInsets.all(5),
    ),
    Tab(
      text: '我的',
      icon: Icon(Icons.people),
      iconMargin: EdgeInsets.all(5),
    ),
  ];

  final _tabDateList = [
    TabBean(title: '首页', icon: Icons.home),
    TabBean(title: '邮件', icon: Icons.mail),
    TabBean(title: '消息', icon: Icons.message),
    TabBean(title: '我的', icon: Icons.people),
  ];

  @override
  State<StatefulWidget> createState() {
    return _TabBarPageState();
  }
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  _customTabs() {
    return widget._tabDateList
        .map(
          (e) => Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Icon(e.icon), Text(e.title)],
            ),
          ),
        )
        .toList();
  }

  @override
  void initState() {
    _tabController = TabController(length: widget._tabList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarPage'),
        bottom: TabBar(
          // tabs: widget._tabList,
          tabs: _customTabs(),
          controller: _tabController,
          isScrollable: false,
          indicatorWeight: 2,
          indicatorColor: Colors.amberAccent,
          indicatorPadding: EdgeInsets.only(bottom: 2),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.amberAccent,
          labelPadding: EdgeInsets.only(bottom: 2),
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black,
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

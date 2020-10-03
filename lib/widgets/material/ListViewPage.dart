import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class ListViewPage extends StatefulWidget {
  final tip = '''
1.介绍
- ListTile：一个文本组件，跟之前介绍的SwitchListTile、RadioListTile、CheckboxListTile相似，传送门：[Flutter教学目录](https://www.jianshu.com/p/3320350b3814)
- RefreshIndicator：刷新组件
- ListView：列表
2.ListTile属性
- leading：头部widget
- title：标题
- subtitle：副标题
- trailing：尾部widget
- dense：
- shape：形状
- contentPadding：内边距
- enabled = true：是否可用,false会屏蔽点击长按事件,然后置灰
- onTap：点击事件
- onLongPress：长按事件
- selected = false：是否选中,true的话会展示主题色调
3.RefreshIndicator属性
- child：子widget
- displacement = 40.0：触发下拉刷新的距离
- onRefresh：刷新事件
- color：颜色
- backgroundColor：背景色
- strokeWidth = 2.0: 宽度
4.ListView()
- scrollDirection = Axis.vertical：方向
- reverse = false：是否反转,为true的话排列会反向,下拉刷新也会变成上拉刷新
- ScrollController controller：控制器
- primary：当内容不足以滚动时，是否支持滚动；true:用来解决listView不满一页无法触发下拉刷新
- physics：控制用户滚动视图的交互
  - AlwaysScrollableScrollPhysics:列表总是可滚动的。在iOS上会有回弹效果，在android上不会回弹。那么问题来了，如果primary设置为false（内容不足时不滚动），且 physics设置为AlwaysScrollableScrollPhysics，列表是否可以滑动？答案是可以，感兴趣的可以试一下
  - PageScrollPhysics：一般是给PageView控件用的滑动效果。如果listview设置的话在滑动到末尾时会有个比较大的弹起和回弹
  - ClampingScrollPhysics：滚动时没有回弹效果，同android系统的listview效果
  - NeverScrollableScrollPhysics：就算内容超过列表范围也不会滑动
  - BouncingScrollPhysics：不论什么平台都会有回弹效果
- shrinkWrap = false：false：则高度为滑动方向上的最大允许高度；如果在滑动方向上没有设置约束，则这个字段必须设置为true，否则会报错。简而言之就是父节点为滑动组件的时候,且滑动方向一致需要true
- padding：内边距
- itemExtent：指定Item在滑动方向上的高度，用来提高滑动性能
- addAutomaticKeepAlives = true：是否将子控件包裹在AutomaticKeepAlive控件内
- addRepaintBoundaries = true：是否将子控件包裹在 RepaintBoundary 控件内。用于避免列表滚动时的重绘，如果子控件重绘开销很小时，比如子控件就是个色块或简短的文字，把这个字段设置为false性能会更好
- addSemanticIndexes = true：是否把子控件包装在IndexedSemantics里，用来提供无障碍语义
- cacheExtent：可见区域的前后会有一定高度的空间去缓存子控件，当滑动时就可以迅速呈现
- children = const <Widget>[]：
- semanticChildCount：语义item数量
5.ListView.builder()
- itemBuilder：IndexedWidgetBuilder item
- itemCount：item数量
6.ListView.separated
- itemBuilder：IndexedWidgetBuilder item
- separatorBuilder：分割线
- itemCount：item数量
7.Divider
- height:高度,这个高度不是Divider设置高度,不是里面的线高度
- thicknes:这个才是线高度
- indent:开始缩进
- endInden:末尾缩进
- color:颜色
8.ListView.custom
- childrenDelegate：SliverChildDelegate
- findChildIndexCallback：
- childCount：
  ''';

  @override
  State<StatefulWidget> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<ListTile> _widgetList = [];
  ScrollController _scrollController;

  _myRefreshIndicator() {
    return RefreshIndicator(
      // child: _myListView(),
      // child: _myListViewBuild(),
      // child: _myListViewSeparated(),
      child: _myListViewCustom(),
      displacement: 40,
      onRefresh: () {
        ToastUtil.showToast('onRefresh');
        return _onRefresh();
      },
      color: Colors.blue,
      backgroundColor: Colors.white,
      strokeWidth: 2,
    );
  }

  _onRefresh() async {
    await Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _widgetList.clear();
        _getListWidgets();
      });
    });
  }

  _myListTitle() {
    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text('title'),
      subtitle: Text('subtitle'),
      trailing: Icon(Icons.account_box),
      dense: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      contentPadding: EdgeInsets.all(10),
      enabled: true,
      onTap: () {
        ToastUtil.showToast('onTap');
      },
      onLongPress: () {
        ToastUtil.showToast('onLongPress');
      },
      selected: false,
    );
  }

  _getListWidgets() {
    for (var i = 0; i < 10; i++) {
      _widgetList.add(_myListTitle());
    }
    return _widgetList;
  }

  _myListView() {
    return ListView(
      scrollDirection: Axis.vertical,
      reverse: false,
      controller: null,
      primary: true,
      itemExtent: 60,
      cacheExtent: 60,
      padding: EdgeInsets.all(10),
      children: _getListWidgets(),
    );
  }

  _myListViewBuild() {
    return ListView.builder(
      primary: true,
      padding: EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        return _myListTitle();
      },
      itemCount: _widgetList.length,
    );
  }

  _myListViewSeparated() {
    return ListView.separated(
      primary: true,
      itemBuilder: (BuildContext context, int index) => _myListTitle(),
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 1,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        );
        return Container(
          child: Text('----分割线----'),
          color: Colors.grey,
        );
      },
      itemCount: _widgetList.length,
    );
  }

  _myListViewCustom() {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _myListTitle();
        },
        childCount: _widgetList.length,
        findChildIndexCallback: (key){
          print('key = $key');
          return 0;
        }
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getListWidgets();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      print('_scrollController.addListener');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView/ListTile/RefreshIndicator'),
      ),
      body: _myRefreshIndicator(),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

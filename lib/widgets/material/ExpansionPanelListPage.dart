import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';

class ExpansionPanelListPage extends StatefulWidget {
  final _tip = '''
1.Expansion介绍
- ExpansionPanelList/ExpansionPanel：实现扩展列表
- ExpansionPanelList.radio/ExpansionPanelRadio：实现单扩展列表，只会存在一个展开的条目
- ExpansionTile：扩展面板
2.ExpansionPanelList属性
- children = const <ExpansionPanel>[]：
- expansionCallback：展开收起的回调
- animationDuration = kThemeAnimationDuration：动画时长
- expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding：展开时头部内边距
- dividerColor：分割线颜色
3.ExpansionPanel
- headerBuilder：头部widget
- body：子widget
- isExpanded = false：是否展开
- canTapOnHeader = false：头部是否可点击
4.ExpansionPanelList.radio属性
this.children = const <ExpansionPanelRadio>[]：
this.expansionCallback：展开收起的回调
this.animationDuration = kThemeAnimationDuration：动画时长
this.initialOpenPanelValue：初始默认展开的子widget
this.expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding：展开时头部内边距
5.ExpansionPanelRadio属性
- value：
- headerBuilder：ExpansionPanelHeaderBuilder 头部widget
- body：子widget
- canTapOnHeader = false：头部是否可点击
6.ExpansionTile属性
- leading：头widget
- title：标题
- subtitle：副标题
- backgroundColor：展开时背景色
- onExpansionChanged：展开回调
- children = const <Widget>[]：子widget
- trailing：尾部widget
- initiallyExpanded = false：初始是否展开
- maintainState = false：
- tilePadding：内边距
- expandedCrossAxisAlignment：次轴对齐
- expandedAlignment：主轴对齐
- childrenPadding：子内容内边距
  ''';

  @override
  State<StatefulWidget> createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  List<ExpandedBean> _dataList = [];
  List<ExpansionPanel> _widgetList = [];
  List<ExpansionPanelRadio> _widgetList2 = [];

  _myExpansionPanel(ExpandedBean bean) {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) {
        return Text('ExpansionPanel header');
      },
      body: ListView(
        shrinkWrap: true,
        children: [
          Text('ExpansionPanel body'),
          Text('ExpansionPanel body'),
          Text('ExpansionPanel body'),
        ],
      ),
      isExpanded: bean.isExpanded,
      canTapOnHeader: true,
    );
  }

  _myExpansionPanelList() {
    return ExpansionPanelList(
      children: _getWidgetList(),
      expansionCallback: (int panelIndex, bool isExpanded) {
        print('panelIndex = $panelIndex isExpanded = $isExpanded');
        setState(() {
          _dataList[panelIndex].isExpanded = !isExpanded;
        });
      },
      animationDuration: Duration(milliseconds: 200),
      expandedHeaderPadding: EdgeInsets.all(10),
      dividerColor: Colors.red,
    );
  }

  _myExpansionPanelListRadio() {
    return ExpansionPanelList.radio(
      children: _widgetList2,
      initialOpenPanelValue: _widgetList2[1],
      expansionCallback: (int panelIndex, bool isExpanded) {
        print('panelIndex = $panelIndex isExpanded = $isExpanded');
      },
      animationDuration: Duration(milliseconds: 200),
      expandedHeaderPadding: EdgeInsets.all(10),
      dividerColor: Colors.red,
    );
  }

  _myExpansionPanelRadio(ExpandedBean bean) {
    return ExpansionPanelRadio(
      value: bean,
      headerBuilder: (context, isExpanded) {
        return Text('ExpansionPanelRadio header');
      },
      body: ListView(
        shrinkWrap: true,
        children: [
          Text('ExpansionPanelRadio body'),
          Text('ExpansionPanelRadio body'),
          Text('ExpansionPanelRadio body'),
        ],
      ),
      canTapOnHeader: true,
    );
  }

  _getWidgetList() {
    _widgetList.clear();
    _dataList.forEach((element) {
      _widgetList.add(_myExpansionPanel(element));
    });
    return _widgetList;
  }

  _initWidgetList2() {
    _dataList.forEach((element) {
      _widgetList2.add(_myExpansionPanelRadio(element));
    });
  }

  _initData() {
    for (var i = 0; i < 15; i++) {
      _dataList.add(ExpandedBean(i == 0 ? true : false));
    }
    return _dataList;
  }

  _myExpansionTile() {
    return ExpansionTile(
      leading: Icon(Icons.account_circle),
      title: Text('ExpansionTile title'),
      subtitle: Text('ExpansionTile subtitle'),
      // backgroundColor: Colors.amber,
      onExpansionChanged: (isExpanded) {
        print('isExpanded = $isExpanded');
      },
      children: [
        Text('ExpansionTile children'),
        Text('ExpansionTile children'),
        Text('ExpansionTile children'),
        Text('ExpansionTile children'),
      ],
      trailing: Icon(Icons.print),
      initiallyExpanded: true,
      maintainState: false,
      tilePadding: EdgeInsets.all(10),
      expandedAlignment: Alignment.center,
      expandedCrossAxisAlignment: CrossAxisAlignment.center,
      childrenPadding: EdgeInsets.all(10),
    );
  }

  @override
  void initState() {
    super.initState();
    _initData();
    _initWidgetList2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList/ExpansionPanel/ExpansionPanelRadio'),
      ),
      body: SingleChildScrollView(
        // child: _myExpansionPanelList(),
        // child: _myExpansionPanelListRadio(),
        child: _myExpansionTile(),
      ),
    );
  }
}

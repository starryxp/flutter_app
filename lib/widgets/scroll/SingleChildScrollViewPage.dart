import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  final _tip = '''
1.SingleChildScrollView介绍
有一个子widget的可滚动的widget，子内容超过父容器时可以滚动。
2.SingleChildScrollView属性
- scrollDirection = Axis.vertical：滑动方向
- reverse = false：是否倒序
- padding：内边距
- primary：当内容不足以滚动时，是否支持滚动；
- physics：控制用户滚动视图的交互
- controller：滑动控制器
- child：
  ''';

  @override
  State<StatefulWidget> createState() => SingleChildScrollViewPageState();
}

class SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      print('_scrollController ${_scrollController.offset}');
    });
    super.initState();
  }

  _myChildren() {
    return [
      Container(
        height: 300,
        color: Colors.blue,
      ),
      Container(
        height: 300,
        color: Colors.yellow,
      ),
      Container(
        height: 300,
        color: Colors.red,
      ),
      Container(
        height: 300,
        color: Colors.green,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        reverse: true,
        child: ListBody(
          children: _myChildren(),
        ),
        restorationId: 's1',
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BaselinePage extends StatelessWidget {
  final _tip = '''
1.Baseline介绍
根据子项的基线对它们的位置进行定位的widget。Baseline基准线是指将他的子元素放在TextBaseline的基准线上，即子元素的TextBaseline的基准线到Baseline组件顶部的距离为baseline数值。
2.Baseline属性
- baseline：baseline数值，必要参数，从顶部算。
- baselineType：TextBaseline 必要参数，目前有两种类型，alphabetic对齐字符底部的水平线，ideographic对齐表意字符的水平线
- child：
  ''';

  Baseline _myBaseline(Widget widget) {
    return Baseline(
      baseline: 100,
      baselineType: TextBaseline.alphabetic,
      child: widget,
    );
  }

  _myBaselineChildren() {
    return [
      Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 20),
        child: _myBaseline(Text(
          'text1',
          style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
        )),
      ),
      _myBaseline(Text(
        'text2',
        style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
      )),
      _myBaseline(Text(
        'text3',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 20,
          backgroundColor: Colors.amber,
        ),
      )),
      _myBaseline(
        Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.only(top: 10),
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ),
      _myBaseline(
        Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.only(top: 10),
          width: 50,
          height: 50,
          color: Colors.blue,
          child: Image.asset('images/scan.png'),
        ),
      ),
      _myBaseline(
        Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.only(top: 10),
          width: 50,
          color: Colors.blue,
          child: Text(
            'text4',
            style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
          ),
        ),
      ),
      _myBaseline(
        Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.only(top: 10),
          width: 50,
          height: 50,
          color: Colors.blue,
          child: Text(
            'text5',
            style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
          ),
        ),
      ),
      _myBaseline(
        Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.only(top: 70),
          width: 50,
          height: 50,
          color: Colors.blue,
          child: Container(
            child: Text(
              'text6',
              style: TextStyle(fontSize: 14, backgroundColor: Colors.amber),
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline'),
      ),
      body: Row(
        children: _myBaselineChildren(),
      ),
    );
  }
}

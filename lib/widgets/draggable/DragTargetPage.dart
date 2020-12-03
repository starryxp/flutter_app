import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class DragTargetPage extends StatelessWidget {
  final _tip = '''
1.DragTarget介绍
拖拽目标组件
2.DragTarget属性
- builder：candidateData为onWillAccept回调为true时可接收的数据列表，rejectedData为onWillAccept回调为false时拒绝时的数据列表
- onWillAccept：当拖拽锚点进入DragTarget范围时回调，true时会将Data数据添加到candidateData列表中；false时会将Data数据添加到rejectedData列表中；
- onAccept：接收Data数据，只有onWillAccept返回true且拖拽结束时拖拽锚点位于DragTarget内才会回调
- onAcceptWithDetails：跟onAccept一样，只是多了Offset的属性
- onLeave：拖拽锚点进入DragTarget范围后再离开DragTarget范围时回调
- onMove：拖拽锚点进入DragTarget范围后在DragTarget范围内移动时回调
  ''';

  _myText(String s) {
    return Text(
      s,
      style: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DragTarget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Draggable(
                data: "aa",
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: _myText('aa'),
                ),
                feedback: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: _myText('aa'),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Draggable(
                data: "bb",
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: _myText('bb'),
                ),
                feedback: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: _myText('bb'),
                ),
              ),
            ),
            Positioned(
              child: DragTarget(
                builder: (BuildContext context, List<String> candidateData,
                    List<dynamic> rejectedData) {
                  print('DragTarget builder');
                  Color c;
                  String s;
                  if (candidateData.isNotEmpty && candidateData.first == 'aa') {
                    c = Colors.amber;
                    s = '接收到aa';
                  } else if (rejectedData.isNotEmpty) {
                    c = Colors.grey;
                    s = '未接收到aa，接收为${rejectedData.first}';
                  } else {
                    s = '只接收aa';
                    c = Colors.cyan;
                  }

                  return Container(
                    color: c,
                    width: 100,
                    height: 100,
                    child: _myText(s),
                  );
                },
                onWillAccept: (s) {
                  print('onWillAccept $s');
                  if (s == 'aa') {
                    return true;
                  } else {
                    return false;
                  }
                },
                onAccept: (s) {
                  print('onAccept $s');
                  ToastUtil.showToast('成功接收到指定数据$s');
                },
                onAcceptWithDetails: (DragTargetDetails<String> details) {
                  print('onAcceptWithDetails ${details.data}');
                  print('onAcceptWithDetails ${details.offset}');
                },
                onLeave: (s) {
                  print('onLeave $s');
                },
                onMove: (DragTargetDetails<dynamic> details) {
                  print('onMove ${details.data}');
                  print('onMove ${details.offset}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

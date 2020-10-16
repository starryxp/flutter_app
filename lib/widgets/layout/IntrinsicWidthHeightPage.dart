import 'package:flutter/material.dart';

class IntrinsicWidthHeightPage extends StatelessWidget {
  final _tip = '''
1.IntrinsicWidth/IntrinsicHeight
一个widget，它将它的子widget的宽度/高度调整其本身实际的宽度/高度，但是非常消耗性能。
2.IntrinsicHeight属性
- child
3.IntrinsicWidth属性
- stepWidth：宽度步长
- stepHeight： 高度步长
- child
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntrinsicWidth/IntrinsicHeight'),
      ),
      // body: IntrinsicWidth(
      //   stepWidth: 11,
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(top: 10),
      //         width: 28,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(top: 10),
      //         width: 50,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
      // body: IntrinsicWidth(
      //   stepHeight: 100,
      //   child: Row(
      //     children: [
      //       Container(
      //         width: 50,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(left: 10),
      //         width: 28,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(left: 10),
      //         width: 50,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
      // body: IntrinsicHeight(
      //   child: Row(
      //     children: [
      //       Container(
      //         width: 50,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(left: 10),
      //         width: 28,
      //         height: 30,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         margin: EdgeInsets.only(left: 10),
      //         width: 50,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
      body: IntrinsicWidth(
        stepWidth: 100,
        stepHeight: 1,
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}

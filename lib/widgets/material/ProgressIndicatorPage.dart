import 'package:flutter/material.dart';

class ProgressIndicatorPage extends StatefulWidget {
  final tip = '''
1.ProgressIndicator介绍
- LinearProgressIndicator：一个线性进度条
- CircularProgressIndicator:一个圆形进度条
2.LinearProgressIndicator属性
- value：progress 0~1
- backgroundColor：进度条底色
- valueColor：Animation<Color> 进度条颜色 AlwaysStoppedAnimation<Color>(Colors.amber)
3.CircularProgressIndicator属性
- value：progress 0~1
- backgroundColor：进度条底色
- valueColor：Animation<Color> 进度条颜色 AlwaysStoppedAnimation<Color>(Colors.amber)
- strokeWidth = 4.0：宽度
  ''';

  @override
  State<StatefulWidget> createState() => _ProgressIndicatorPageState();
}

class _ProgressIndicatorPageState extends State<ProgressIndicatorPage> {

  _myLinearProgressIndicator() {
    return LinearProgressIndicator(
      // value: null,
      value: 0.4,
      backgroundColor: Colors.amber.shade100,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
    );
  }

  _myCircularProgressIndicator() {
    return CircularProgressIndicator(
      // value: null,
      value: 0.4,
      backgroundColor: Colors.amber.shade100,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
      strokeWidth: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator/CircularProgressIndicator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 10,
              child: _myLinearProgressIndicator(),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              child: _myCircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

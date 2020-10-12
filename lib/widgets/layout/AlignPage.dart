import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  final _tip = '''
1.Align介绍
2.Align属性
- alignment = Alignment.center：
- widthFactor：宽度因子
- heightFactor：高度因子
- child：
3.Alignment属性
- Alignment.topLeft = Alignment(-1.0, -1.0)：
- Alignment.topCenter = Alignment(0.0, -1.0)：
- Alignment.topRight = Alignment(1.0, -1.0)：
- Alignment.centerLeft = Alignment(-1.0, 0.0)：
- Alignment.center = Alignment(0.0, 0.0)：
- Alignment.centerRight = Alignment(1.0, 0.0)：
- Alignment.bottomLeft = Alignment(-1.0, 1.0)：
- Alignment.bottomCenter = Alignment(0.0, 1.0)：
- Alignment.bottomRight = Alignment(1.0, 1.0)：
- Alignment()
- Alignment.lerp()
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.amber,
            child: Align(
              alignment: Alignment.center,
              widthFactor: 2,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.amber,
            child: Align(
              alignment: Alignment.center,
              heightFactor: 2,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.amber,
            child: Align(
              alignment: Alignment.center,
              widthFactor: 2,
              heightFactor: 2,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

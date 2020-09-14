import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  final content = "这是一个flutter入门教学app";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Text：单一格式的文本'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: Text(
              '内容：$content$content$content$content$content$content$content$content',
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 1.0,
              style: TextStyle(
//                backgroundColor: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.black,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.double,
                wordSpacing: 1.0,
                letterSpacing: 0.2,
                height: 1.5,
                textBaseline: TextBaseline.ideographic,
                shadows: [
                  Shadow(
                      blurRadius: 10,
                      offset: Offset(0.5, 0.5),
                      color: Colors.blue)
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '内容：',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('内容：');
                      },
                  ),
                  TextSpan(
                    text: content,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print(content);
                      },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

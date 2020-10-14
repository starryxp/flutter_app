import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  final _tip = '''
1.ConstrainedBox介绍
对其子项施加附加约束的widget
2.ConstrainedBox属性
- constraints：BoxConstraints 约束
- child：
3.BoxConstraints属性
- BoxConstraints()：指定约束范围，默认如下：
  this.minWidth = 0.0,
  this.maxWidth = double.infinity,
  this.minHeight = 0.0,
  this.maxHeight = double.infinity,
- BoxConstraints.tight(Size size)：指定固定大小
- BoxConstraints.tightFor(width,height)：设置宽/高，设置一个值，另一个值就是范围值0 ~ double.infinity；设置两个就相当于BoxConstraints.tight；都不设置就是BoxConstraints()的默认状态
- BoxConstraints.tightForFinite(width,height)：设置宽/高，设置一个值，该值范围就是width/height ~ double.infinity，另一个值就是范围值0~double.infinity；都设置那么宽、高的取值范围就是width ~ double.infinity、height ~ double.infinity；都不设置就是BoxConstraints()的默认状态
- BoxConstraints.loose(Size size)：只限制maxWidth，maxHeight 
- BoxConstraints.expand(width,height)：设置宽/高，设置一个值，该值就为设定值，另一个值就是 double.infinity；设置两个相当于BoxConstraints.tight；都不设置，宽/高都是double.infinity
- BoxConstraints.lerp(BoxConstraints a, BoxConstraints b, double t)：约束介于ab之间，t为偏移值
  ''';

  @override
  Widget build(BuildContext context) {
    _myChild() {
      return DecoratedBox(
        decoration: BoxDecoration(color: Colors.red),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            ConstrainedBox(
              child: _myChild(),
              constraints: BoxConstraints(
                minWidth: 50,
                minHeight: 50,
                maxWidth: 300,
                maxHeight: 300,
              ),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              child: ConstrainedBox(
                child: _myChild(),
                constraints: BoxConstraints.tight(Size(100, 60)),
              ),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints(
                maxWidth: 90,
                maxHeight: 40,
              ),
              child: ConstrainedBox(
                child: _myChild(),
                constraints: BoxConstraints.tight(Size(100, 60)),
              ),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints(
                maxHeight: 100,
              ),
              child: ConstrainedBox(
                child: _myChild(),
                constraints: BoxConstraints.tight(Size(100, 20)),
              ),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              constraints: BoxConstraints(
                maxHeight: 10,
              ),
              child: ConstrainedBox(
                child: _myChild(),
                constraints: BoxConstraints(
                  minWidth: 120,
                  minHeight: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

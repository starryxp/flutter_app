import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  final _tip = '''
1.FittedBox
按自己的大小调整其子widget的大小和位置。
2.
- fit = BoxFit.contain：
- alignment = Alignment.center：
- clipBehavior = Clip.hardEdge：
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
4.BoxFit
- BoxFit.contain：全图居中显示但不充满，显示原比例
- BoxFit.cover：图片可能拉伸，也可能裁剪，但是充满容器
- BoxFit.fill：全图显示且填充满，图片可能会拉伸
- BoxFit.fitHeight：图片可能拉伸，可能裁剪，高度充满
- BoxFit.fitWidth：图片可能拉伸，可能裁剪，宽度充满
- BoxFit.scaleDown：效果和contain差不多， 但是只能缩小图片，不能放大图片
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.fill,
              child: Text('FittedBox'),
            ),
          ),
          FittedBox(
            child: Text('FittedBox'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorPage extends StatefulWidget {
  final _tip = '''
1.CupertinoActivityIndicator介绍
- CupertinoActivityIndicator：ios风格的loading
- CupertinoActivityIndicator.partiallyRevealed：ios loading 风格的进度指示器
2.CupertinoActivityIndicator属性
- animating = true：是否执行动画
- radius = _kDefaultIndicatorRadius：loading的大小
3.CupertinoActivityIndicator.partiallyRevealed
- radius = _kDefaultIndicatorRadius：loading的大小
- progress = 1.0：进度 0~1
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoActivityIndicatorPageState();
}

class _CupertinoActivityIndicatorPageState
    extends State<CupertinoActivityIndicatorPage> {
  _myCupertinoActivityIndicator() {
    return CupertinoActivityIndicator(
      animating: true,
      radius: 20,
    );
  }

  _myCupertinoActivityIndicatorPartiallyRevealed() {
    return CupertinoActivityIndicator.partiallyRevealed(
      radius: 20,
      progress: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActivityIndicator'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: [
            _myCupertinoActivityIndicator(),
            _myCupertinoActivityIndicatorPartiallyRevealed(),
          ],
        ),
      ),
    );
  }
}

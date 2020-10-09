import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchPage extends StatefulWidget {
  final _tip = '''
1.CupertinoSwitch介绍
iOS风格的开关. 用于单一状态的开/关
2.CupertinoSwitch属性
- value：
- onChanged：回调监听
- activeColor：打开是轨道颜色
- trackColor：关闭时轨道颜色
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoSwitchPageState();
}

class _CupertinoSwitchPageState extends State<CupertinoSwitchPage> {
  bool _onOff = false;

  _myCupertinoSwitch() {
    return CupertinoSwitch(
      value: _onOff,
      onChanged: (onOff) {
        setState(() {
          _onOff = onOff;
        });
      },
      activeColor: Colors.blue,
      trackColor: Colors.amber,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSwitch'),
      ),
      body: Center(
        child: _myCupertinoSwitch(),
      ),
    );
  }
}

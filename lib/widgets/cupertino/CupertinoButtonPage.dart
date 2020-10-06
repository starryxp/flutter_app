import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class CupertinoButtonPage extends StatefulWidget {
  final tip = '''
1.CupertinoButton介绍
- CupertinoButton：iOS风格的button，默认没有背景颜色
- CupertinoButton.filled：iOS风格的button，默认主色调背景颜色
2.CupertinoButton、CupertinoButton.filled属性
- child：子节点
- padding：内边距
- color：颜色
- disabledColor = CupertinoColors.quaternarySystemFill：不可用颜色 onPressed = null
- minSize = kMinInteractiveDimensionCupertino：按钮最小尺寸
- pressedOpacity = 0.4：点击是按钮透明的
- borderRadius = const BorderRadius.all(Radius.circular(8.0))：圆角
- onPressed：点击事件
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoButtonPageState();
}

class _CupertinoButtonPageState extends State<CupertinoButtonPage> {
  _myCupertinoButton() {
    return CupertinoButton(
      child: Text('CupertinoButton'),
      padding: EdgeInsets.all(10),
      color: Colors.amber,
      disabledColor: Colors.grey,
      minSize: 50,
      pressedOpacity: 0.4,
      borderRadius: BorderRadius.circular(10),
      onPressed: () {
        ToastUtil.showToast('CupertinoButton');
      },
    );
  }

  _myCupertinoButtonFilled() {
    return CupertinoButton.filled(
      child: Text('CupertinoButton'),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoButton'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _myCupertinoButton(),
          _myCupertinoButtonFilled(),
        ],
      ),
    );
  }
}

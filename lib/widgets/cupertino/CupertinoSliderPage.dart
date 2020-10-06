import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderPage extends StatefulWidget {
  final tip = '''
1.CupertinoSlider介绍
从一个范围中选一个值.
2.CupertinoSlider属性
- value：控件的位置
- onChanged：回调监听
- onChangeStart：滑动开始回调返回起始值
- onChangeEnd：滑动结束后回调返回结束值
- min = 0.0：最小值
- max = 1.0：最大值
- divisions：分为几块，比如设置为10，Slider只能滑动到10个位置
- activeColor：滑动过的区域的颜色
- thumbColor = CupertinoColors.white：滑块颜色
  ''';

  @override
  State<StatefulWidget> createState() => _CupertinoSliderPageState();
}

class _CupertinoSliderPageState extends State<CupertinoSliderPage> {
  double _progress1 = 0;
  double _progress2 = 0;

  _myCupertinoSlider1() {
    return CupertinoSlider(
      value: _progress1,
      onChanged: (progress) {
        setState(() {
          _progress1 = progress;
        });
      },
      onChangeStart: (progress) {
        print('onChangeStart progress = $progress');
      },
      onChangeEnd: (progress) {
        print('onChangeEnd progress = $progress');
      },
      min: 0,
      max: 10,
      activeColor: Colors.blue,
      thumbColor: Colors.amber,
    );
  }

  _myCupertinoSlider2() {
    return CupertinoSlider(
      value: _progress2,
      onChanged: (progress) {
        setState(() {
          _progress2 = progress;
        });
      },
      onChangeStart: (progress) {
        print('onChangeStart progress = $progress');
      },
      onChangeEnd: (progress) {
        print('onChangeEnd progress = $progress');
      },
      min: 0,
      max: 100,
      divisions: 10,
      activeColor: Colors.blue,
      thumbColor: Colors.amber,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSlider'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _myCupertinoSlider1(),
          _myCupertinoSlider2(),
        ],
      ),
    );
  }
}

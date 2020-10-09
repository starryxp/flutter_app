import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  final _tip = '''
1.Slider介绍
滑块，允许用户通过滑动滑块来从一系列值中选择。
2.Slider属性
- value：控件的位置
- onChanged：回调监听
- onChangeStart：滑动开始回调返回起始值
- onChangeEnd：滑动结束后回调返回结束值
- min = 0.0：最小值
- max = 1.0：最大值
- divisions：分为几块，比如设置为10，Slider只能滑动到10个位置
- label：设置显示在节点上的label
- activeColor：滑动过的区域的颜色
- inactiveColor：未滑动过的区域的颜色
- autofocus = false
  ''';

  @override
  State<StatefulWidget> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _progress1 = 0;
  double _progress2 = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              value: _progress1,
              onChanged: (progress) {
                print('onChanged progress = $progress');
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
              max: 100,
              activeColor: Colors.amber,
              inactiveColor: Colors.black,
            ),
            Slider(
              value: _progress2,
              onChanged: (progress) {
                setState(() {
                  print('onChanged progress = $progress');
                  _progress2 = progress;
                });
              },
              onChangeStart: (progress) {
                print('onChangeStart progress = $progress');
              },
              onChangeEnd: (progress) {
                print('onChangeStart progress = $progress');
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: _progress2.toString(),
              activeColor: Colors.amber,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

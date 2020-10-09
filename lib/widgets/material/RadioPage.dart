import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  final _tip = '''
1.Radio/RadioListTile介绍
- Radio：单选按钮
- RadioListTile：Radio上层封装，它的外观是提供类似设置页的选择组件，可设置图标和文字。
2.Radio属性
- value：单选的值
- groupValue：选择组的值
- onChanged：改变时触发监听
- activeColor：选中的颜色、背景颜色
- autofocus = false,
3.RadioListTile属性
- value：单选的值
- groupValue：选择组的值
- onChanged：改变时触发监听
- activeColor：选中的颜色、背景颜色
- title：主标题
- subtitle：副标题
- dense：是否是listView子控件
- secondary：图标
- selected：false，是否选中
- controlAffinity：ListTileControlAffinity.platform，排列方式
- autofocus = false,
  ''';

  @override
  State<StatefulWidget> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var _sex = 0;

  _myRadio(int value) {
    return Radio(
        value: value,
        groupValue: _sex,
        activeColor: Colors.green,
        onChanged: (v) {
          setState(() {
            _sex = v;
          });
        });
  }

  _myRadioListTile(int value) {
    return RadioListTile(
        value: value,
        title: Text('性别'),
        subtitle: Text(value == 0 ? '男' : '女'),
        activeColor: Colors.green,
        dense: true,
        secondary: Icon(Icons.people),
        controlAffinity: ListTileControlAffinity.trailing,
        selected: value == _sex ? true : false,
        groupValue: _sex,
        onChanged: (v) {
          setState(() {
            _sex = v;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio/RadioListTile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              Text('男：'),
              _myRadio(0),
              Text('女：'),
              _myRadio(1),
            ],
          ),
          _myRadioListTile(0),
          _myRadioListTile(1),
        ],
      ),
    );
  }
}

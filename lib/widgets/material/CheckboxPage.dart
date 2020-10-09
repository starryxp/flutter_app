import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  final _tip = '''
  1.Checkbox/CheckboxListTile介绍
  - Checkbox：复选框，允许用户从一组中选择多个选项。
  - CheckboxListTile：在Checkbox 的上层封装，它的外观是提供类似设置页的选择组件，可设置图标和文字。
  2.CheckBox属性
  - value：是否选中此复选框
  - tristate：false，默认false，如果为true，复选框的值可以为true、false或null。
  - onChanged：监听，当复选框的值应该更改时调用
  - mouseCursor：光标
  - activeColor：选中此复选框时要使用的颜色
  - checkColor：选中此复选框时用于复选图标的颜色
  - autofocus：false
  3.CheckboxListTile属性
  - value：是否选中此复选框
  - onChanged：监听，当复选框的值应该更改时调用
  - activeColor：选中此复选框时要使用的颜色
  - checkColor：选中此复选框时用于复选图标的颜色
  - title：主标题
  - subtitle：副标题
  - isThreeLine：false,
  - dense：是否是列表的一部分
  - secondary：显示在复选框前面的小部件
  - selected：选中后文字高亮，默认false
  - controlAffinity：ListTileControlAffinity.platform，控件相对于文本的位置
  - autofocus：alse,
  - contentPadding：内边距
  - tristate：false，默认false，如果为true，复选框的值可以为true、false或null。
  ''';

  @override
  State<StatefulWidget> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _checkboxSelected = false;
  var _checkboxTextSelected = '已选中';
  var _checkboxTextNotSelected = '未选中';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox/CheckboxListTile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: null,
                  onChanged: (isChecked) {
                    setState(() {
                      _checkboxSelected = isChecked;
                    });
                  },
                  tristate: true,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),
                // Text(_checkboxSelected
                //     ? _checkboxTextSelected
                //     : _checkboxTextNotSelected)
              ],
            ),
            CheckboxListTile(
              value: _checkboxSelected,
              onChanged: (isChecked) {
                setState(() {
                  _checkboxSelected = isChecked;
                });
              },
              secondary: Icon(Icons.print),
              title: Text('文件一'),
              subtitle: Text('会议文件'),
              activeColor: Colors.red,
              checkColor: Colors.white,
              controlAffinity: ListTileControlAffinity.platform,
              selected: _checkboxSelected,
              isThreeLine: false,
              dense: false,
            ),
          ],
        ),
      ),
    );
  }
}

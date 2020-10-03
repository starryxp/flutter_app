import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class ChipPage extends StatefulWidget {
  final tip = '''
1.Chip介绍
- Chip：标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人。
- ActionChip：在Chip基础上多了点击事件，长安提示，取消了删除属性
- ChoiceChip：在ActionChip基础上多了是否选中，取消了点击事件,跟长按事件
- FilterChip：在ChoiceChip多了checkMark等属性
- InputChip：在FilterChip基础上多了是否可用，点击事件，长安提示等属性，保留了取消了删除属性
2.Chip属性
- avatar：Chip左侧子widget
- label：文本
- labelStyle：文本样式
- labelPadding：文本内边距
- deleteIcon：删除图标（这个不是只能放删除图片，做其他操作也是可以的）
- onDeleted：删除回调
- deleteIconColor：如果删除图片是Icon支持设置颜色
- deleteButtonTooltipMessage：deleteIcon长按提示
- shape：形状
- clipBehavior = Clip.none：
- backgroundColor：背景颜色
- padding：内边距
- elevation：阴影
- shadowColor：阴影颜色
3.ActionChip属性
- avatar：Chip左侧子widget
- label：文本
- labelStyle：文本样式
- labelPadding：文本内边距
- onPressed：点击事件
- pressElevation：点击阴影
- tooltip：长安提示
- shape：形状
- clipBehavior = Clip.none：
- backgroundColor：背景颜色
- padding：内边距
- elevation：阴影
- shadowColor：阴影颜色
4.ChoiceChip属性
- avatar：Chip左侧子widget
- label：文本
- labelStyle：文本样式
- labelPadding：文本内边距
- onSelected：选中回调
- pressElevation：点击阴影
- selected：是否选中
- selectedColor：选中颜色
- shape：形状
- clipBehavior = Clip.none：
- backgroundColor：背景色
- padding：内边距
- elevation：阴影
- shadowColor：阴影颜色
- selectedShadowColor：选中阴影颜色
- avatarBorder = const CircleBorder()：avatar边框
5.FilterChip属性
- avatar：Chip左侧子widget
- label：文本
- labelStyle：文本样式
- labelPadding：文本内边距
- selected = false：是否选中
- onSelected：选中回调
- pressElevation：点击阴影
- selectedColor：选中颜色
- shape：形状
- clipBehavior = Clip.none：
- backgroundColor：背景色
- padding：内边距
- elevation：阴影
- shadowColor：阴影颜色
- selectedShadowColor：选中阴影颜色
- showCheckmark：显示选中mark，选中时会在avatar位置出现一个✔
- checkmarkColor：mark颜色
- avatarBorder = const CircleBorder()：avatar边框
6.InputChip属性
- avatar：Chip左侧子widget
- label：文本
- labelStyle：文本样式
- labelPadding：文本内边距
- selected = false：是否选中
- isEnabled = true：是否可用
- onSelected：选中回调
- deleteIcon：删除图标（这个不是只能放删除图片，做其他操作也是可以的）
- onDeleted：删除回调
- deleteIconColor：如果删除图片是Icon支持设置颜色
- deleteButtonTooltipMessage：deleteIcon长按提示
- onPressed：点击事件，不可与onSelected同时存在
- pressElevation：点击阴影
- disabledColor：不可用颜色
- selectedColor：选中颜色
- tooltip：长安提示，只有设置onPressed才生效
- shape：形状
- clipBehavior = Clip.none：
- backgroundColor：背景色
- padding：内边距
- elevation：阴影
- shadowColor：阴影色
- selectedShadowColor：选中阴影色
- showCheckmark：显示选中mark，选中时会在avatar位置出现一个✔
- checkmarkColor：mark颜色
- avatarBorder = const CircleBorder()：Chip左侧子widget边框
  ''';

  @override
  State<StatefulWidget> createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipPage> {
  _myChip() {
    return Chip(
      avatar: Icon(Icons.account_circle),
      label: Text('Chip'),
      labelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelPadding: EdgeInsets.all(10),
      deleteIcon: Icon(Icons.delete) /*Image.asset('images/scan.png')*/,
      onDeleted: () {
        ToastUtil.showToast('onDeleted');
      },
      deleteIconColor: Colors.red,
      deleteButtonTooltipMessage: '删除',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.grey,
      padding: EdgeInsets.all(10),
      elevation: 10,
      shadowColor: Colors.amber,
    );
  }

  var _isSelected = false;

  _myInputChip() {
    return InputChip(
      avatar: Icon(Icons.account_circle),
      label: Text('InputChip'),
      labelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelPadding: EdgeInsets.all(10),
      selected: _isSelected,
      isEnabled: true,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      deleteIcon: Icon(Icons.delete),
      onDeleted: () {
        ToastUtil.showToast('onDeleted');
      },
      deleteIconColor: Colors.red,
      deleteButtonTooltipMessage: '删除',
      // onPressed: () {
      //   ToastUtil.showToast('onPressed');
      // },
      pressElevation: 20,
      disabledColor: Colors.grey,
      selectedColor: Colors.blue,
      tooltip: 'InputChip',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.amber,
      padding: EdgeInsets.all(10),
      elevation: 10,
      shadowColor: Colors.amber,
      selectedShadowColor: Colors.blue,
      checkmarkColor: Colors.red,
      showCheckmark: true,
      avatarBorder: CircleBorder(),
    );
  }

  _myChoiceChip() {
    return ChoiceChip(
      avatar: Icon(Icons.account_circle),
      label: Text('ChoiceChip'),
      labelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelPadding: EdgeInsets.all(10),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      pressElevation: 20,
      disabledColor: Colors.grey,
      selectedColor: Colors.blue,
      tooltip: 'InputChip',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.amber,
      padding: EdgeInsets.all(10),
      elevation: 10,
      shadowColor: Colors.amber,
      selectedShadowColor: Colors.blue,
      avatarBorder: CircleBorder(),
    );
  }

  _myFilterChip() {
    return FilterChip(
      avatar: Icon(Icons.account_circle),
      label: Text('FilterChip'),
      labelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelPadding: EdgeInsets.all(10),
      selected: _isSelected,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      pressElevation: 20,
      disabledColor: Colors.grey,
      selectedColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.amber,
      padding: EdgeInsets.all(10),
      elevation: 10,
      shadowColor: Colors.amber,
      selectedShadowColor: Colors.blue,
      checkmarkColor: Colors.red,
      showCheckmark: true,
      avatarBorder: CircleBorder(),
    );
  }

  _myActionChip() {
    return ActionChip(
      avatar: Icon(Icons.account_circle),
      label: Text('ActionChip'),
      labelStyle: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelPadding: EdgeInsets.all(10),
      onPressed: () {
        ToastUtil.showToast('onPressed');
      },
      pressElevation: 20,
      tooltip: 'InputChip',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.amber,
      padding: EdgeInsets.all(10),
      elevation: 10,
      shadowColor: Colors.amber,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chip'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: _myChip(),
              ),
              Container(
                width: double.infinity,
                height: 120,
                child: _myActionChip(),
              ),
              Container(
                width: double.infinity,
                height: 120,
                child: _myChoiceChip(),
              ),
              Container(
                width: double.infinity,
                height: 120,
                child: _myFilterChip(),
              ),
              Container(
                width: double.infinity,
                height: 120,
                child: _myInputChip(),
              ),
            ],
          ),
        ));
  }
}

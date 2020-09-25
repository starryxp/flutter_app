import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class TextFieldPage extends StatefulWidget {
  final tip = '''
- controller：控制正在编辑文本
- focusNode：获取键盘焦点
- decoration：InputDecoration 边框装饰
- inputType：keyboardType 键盘类型
- textInputAction：键盘的操作按钮类型
- textCapitalization：TextCapitalization.none 配置大小写键盘
- style：输入文本样式
- textAlign：TextAlign.start 对齐方式
- textDirection：文本方向
- autofocus = false：是否自动对焦
- obscureText = false：是否隐藏内容，例如密码格式
- autocorrect = true：是否自动校正
- maxLines = 1：最大行数
- maxLength：允许输入的最大长度
- maxLengthEnforced = true：是否允许超过输入最大长度
- onChanged：文本内容变更时回调
- onEditingComplete：提交内容时回调
- onSubmitted：用户提示完成时回调
- inputFormatters：验证及格式
- enabled：是否不可点击
- cursorWidth = 2.0：光标宽度
- cursorRadius：光标圆角弧度
- cursorColor：光标颜色
- keyboardAppearance：键盘亮度,仅限于 iOS 设备
- scrollPadding：EdgeInsets.all(20.0) 滚动到视图中时，填充边距
- enableInteractiveSelection：长按是否展示【剪切/复制/粘贴菜单LengthLimitingTextInputFormatter】
- onTap：点击时回调
  ''';

  @override
  State<StatefulWidget> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(() {
      print('_textEditingController.text = ${_textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'hintText',
                  hintStyle: TextStyle(
                      fontSize: 14, color: Colors.grey,fontWeight: FontWeight.normal
                  ),
                  labelText: 'labelText',
                  labelStyle: TextStyle(
                      fontSize: 14, color: Colors.blue,fontWeight: FontWeight.normal
                  ),
                  helperText: 'helperText',
                  helperStyle: TextStyle(
                      fontSize: 14, color: Colors.blue,fontWeight: FontWeight.normal
                  ),
                  // errorText: 'errorText',
                  // errorStyle: TextStyle(
                  //     fontSize: 14, color: Colors.blue,fontWeight: FontWeight.normal
                  // ),
                  fillColor: Colors.amber.shade100,
                  filled: true,
                ),
                style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                cursorColor: Colors.amber,
                cursorWidth: 2,
                cursorRadius: Radius.circular(5),
                textAlign: TextAlign.start,
                controller: _textEditingController,
                maxLength: null,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.deny(RegExp(r'\d+'))
                ],
                maxLengthEnforced: true,
                maxLines: 1,
                autofocus: false,
                autocorrect: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                enabled: true,
                onChanged: (text) {
                  print('onChanged = $text');
                },
                onEditingComplete: () {
                  print('onEditingComplete');
                },
                onSubmitted: (text) {
                  print('onSubmitted = $text');
                },
                onTap: () {
                  print('onTap');
                },
              ),
              RaisedButton(
                onPressed: () {
                  _textEditingController.clear();
                },
                child: Text('清空'),
              ),
              Container(
                height: 300,
                color: Colors.blue,
              ),
              TextField(),
            ],
          ),
        ],
      ),
      // resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

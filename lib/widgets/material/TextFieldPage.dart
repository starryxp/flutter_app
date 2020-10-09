import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldPage extends StatefulWidget {
  final _tip = '''
1.TextField简介
输入框
2.TextField属性
- controller：文本控制器
- focusNode：获取键盘焦点
- decoration：InputDecoration 边框装饰
- inputType：keyboardType 键盘类型
- textInputAction：键盘的操作按钮类型
- textCapitalization：TextCapitalization.none 配置大小写键盘
- style：输入文本样式
- textAlign：TextAlign.start 对齐方式
- textDirection：文本方向
- readOnly：只读
- showCursor：显示光标
- autofocus = false：是否自动对焦
- obscureText = false：是否隐藏内容，例如密码格式
- obscuringCharacter：隐藏格式
- autocorrect = true：是否自动校正
- maxLines = 1：最大行数
- minLines：最小行数
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
- scrollController：滑动控制器
- scrollPhysics：滑动样式
3.InputDecoration属性
- icon：输入框最前面的widget
- labelText：悬浮提示文本
- labelStyle：悬浮提示文本样式
- helperText：帮助文本
- helperStyle：帮助文本样式 
- helperMaxLines：帮助文本最大行数
- hintText：提示文本
- hintStyle：提示文本样式
- hintMaxLines：提示文本最大行数
- errorText：报错文本
- errorStyle：报错文本样式
- errorMaxLines：报错文本最大行数
- isCollapsed：false，是否折叠
- contentPadding：内边距
- prefixIcon：前缀widget
- prefixIconConstraints：prefixIcon约束
- prefix：前缀widget，相当于自定义前缀widget,整体替换prefixIcon，prefixText（不可跟prefixIcon，prefixText同时使用）
- prefixText：前缀文本
- prefixStyle：前缀文本样式
- suffixIcon：后缀widget
- suffix：后缀widget，相当于自定义后缀widget,整体替换suffixText，suffixIcon（不可跟suffixText，suffixIcon同时使用）
- suffixText：后缀文本
- suffixStyle：后缀文本样式
- suffixIconConstraints：suffixIcon约束
- counter：counter widget（在组件右下方，可以自定义功能，不只是计数使用）
- counterText：counter文本
- counterStyle：counter文本样式
- filled：输入框颜色是否填充
- fillColor：输入框填充色
- errorBorder：错误边框
- focusedBorder：获取光标时边框
- focusedErrorBorder：获取光标时错误边框
- disabledBorder：不可用时边框
- enabledBorder：可用时边框
- border：边框
- enabled：true，是否可用
- alignLabelWithHint：label是否对齐hint
  ''';

  @override
  State<StatefulWidget> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController _textEditingController;
  var _errorText;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.text = '初始值';
    _textEditingController.addListener(() {
      print('_textEditingController.text = ${_textEditingController.text}');
    });
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      print('_scrollController.addListener');
    });
  }

  _myInputDecoration() {
    return InputDecoration(
      icon: Icon(
        Icons.home,
        size: 40,
      ),
      // isCollapsed: false,
      hintText: 'hintText',
      hintMaxLines: 1,
      hintStyle: _textStyle(Colors.grey),
      labelText: 'labelText',
      alignLabelWithHint: false,
      labelStyle: _textStyle(Colors.black),
      helperText: 'helperText',
      helperMaxLines: 1,
      helperStyle: _textStyle(Colors.black),
      errorText: _errorText,
      errorMaxLines: 1,
      errorStyle: _textStyle(Colors.red),
      fillColor: Colors.amber.shade100,
      filled: true,
      // border: _myUnderlineInputBorder(Colors.black),
      border: _myOutlineInputBorder(Colors.red),
      // suffix: ,
      // suffixIcon: Icon(
      //   Icons.account_box,
      //   size: 40,
      // ),
      suffixIcon: Image.asset('images/scan.png'),
      suffixText: 'suffixText',
      suffixStyle: _textStyle(Colors.black),
      suffixIconConstraints: BoxConstraints.expand(width: 40, height: 40),
      // prefix: ,
      prefixIcon: Icon(
        Icons.account_circle,
        size: 40,
      ),
      prefixText: 'prefixText：',
      prefixStyle: _textStyle(Colors.black),
      prefixIconConstraints: BoxConstraints.expand(width: 40, height: 40),
      // counter: ,
      counterText: 'counterText',
      counterStyle: _textStyle(Colors.black),
      disabledBorder: _myOutlineInputBorder(Colors.deepPurple),
      enabledBorder: _myOutlineInputBorder(Colors.blue),
      errorBorder: _myOutlineInputBorder(Colors.red),
      focusedBorder: _myOutlineInputBorder(Colors.amber),
      focusedErrorBorder: _myOutlineInputBorder(Colors.green),
    );
  }

  _myOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        style: BorderStyle.solid,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }

  _myUnderlineInputBorder(Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: color,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }

  _textStyle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
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
          TextField(
            decoration: _myInputDecoration(),
            style: _textStyle(Colors.black),
            cursorColor: Colors.amber,
            cursorWidth: 2,
            cursorRadius: Radius.circular(5),
            textAlign: TextAlign.start,
            controller: _textEditingController,
            maxLength: null,
            inputFormatters: [
              // LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.deny(RegExp(r'\d+'))
            ],
            maxLengthEnforced: true,
            maxLines: 1,
            minLines: 1,
            autofocus: false,
            autocorrect: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            enabled: true,
            obscureText: false,
            obscuringCharacter: '#',
            expands: false,
            readOnly: false,
            scrollController: _scrollController,
            scrollPhysics: BouncingScrollPhysics(),
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
              setState(() {
                if (_textEditingController.text.length <= 0) {
                  _errorText = '请输入内容';
                } else {
                  _errorText = null;
                }
              });
            },
            child: Text('确认'),
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
      resizeToAvoidBottomInset: true,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

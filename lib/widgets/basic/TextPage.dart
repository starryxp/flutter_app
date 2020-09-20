import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class TextPage extends StatelessWidget {
  final _content = "这是一个flutter入门教学app";
  final _tip = '''
    1.1创建Text
        - Text() 构造方法创建，只能生成一种style
        - Text.rich() 静态方法创建，能够生成多种style
    1.2Text属性
        - textDirection 文本对齐
            TextAlign.center 将文本对齐容器的中心。
            TextAlign.end 对齐容器后缘上的文本。
            TextAlign.justify 拉伸以结束的文本行以填充容器的宽度。即使用了decorationStyle才起效
            TextAlign.left 对齐容器左边缘的文本。
            TextAlign.right 对齐容器右边缘的文本。
            TextAlign.start 对齐容器前缘上的文本。
        - maxLines 最大行数
        - overflow 处理字数溢出
            TextOverflow.clip 剪切溢出的文本以修复其容器。
            TextOverflow.ellipsis 使用省略号表示文本已溢出。
            TextOverflow.fade 将溢出的文本淡化为透明。
        - textScaleFactor 字号系数
    1.3TextStyle style 属性
        - color 文本颜色。
        - decoration 绘制文本装饰:
            下划线（TextDecoration.underline）
            上划线（TextDecoration.overline）
            删除线（TextDecoration.lineThrough）
            无（TextDecoration.none）
        - decorationColor 绘制文本装饰的颜色
        - decorationStyle 绘制文本装饰的样式:
            画一条虚线 TextDecorationStyle.dashed
            画一条虚线 TextDecorationStyle.dotted
            画两条线 TextDecorationStyle.double
            画一条实线 TextDecorationStyle.solid
            画一条正弦线(波浪线) TextDecorationStyle.wavy
        - fontWeight 绘制文本时使用的字体粗细:
            FontWeight.bold 常用的字体重量比正常重。即w700 
            FontWeight.normal 默认字体粗细。即w400 
            FontWeight.w100 薄，最薄 
            FontWeight.w200 特轻 
            FontWeight.w300 轻 
            FontWeight.w400 正常/普通/平原 
            FontWeight.w500 较粗 
            FontWeight.w600 半粗体 
            FontWeight.w700 加粗 
            FontWeight.w800 特粗 
            FontWeight.w900 最粗
        - fontStyle 字体变体：
            FontStyle.italic 使用斜体
            FontStyle.normal 使用直立
        - textBaseline 对齐文本的水平线:
            TextBaseline.alphabetic：文本基线是标准的字母基线
            TextBaseline.ideographic：文字基线是表意字基线；如果字符本身超出了alphabetic 基线，那么ideograhpic基线位置在字符本身的底部。
        - fontFamily 使用的字体名称（例如，Roboto）。如果字体是在包中定义的，那么它将以'packages/package_name/'为前缀（例如'packages/cool_fonts/Roboto'）
        - fontSize 字体大小
        - letterSpacing 水平字母之间的空间间隔（逻辑像素为单位）。可以使用负值来让字母更接近。
        - wordSpacing 单词之间添加的空间间隔（逻辑像素为单位）。可以使用负值来使单词更接近。
        - height 文本行与行的高度，作为字体大小的倍数
        - locale 用于选择区域特定字形的语言环境
        - background 文本背景色
        - foreground 文本的前景色
        - shadows 实现一些特殊效果
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Text：单一格式的文本'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: Text(
              '内容：$_content$_content$_content$_content$_content$_content$_content$_content',
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 1.0,
              style: TextStyle(
//                backgroundColor: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.black,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.double,
                wordSpacing: 1.0,
                letterSpacing: 0.2,
                height: 1.5,
                textBaseline: TextBaseline.ideographic,
                shadows: [
                  Shadow(
                      blurRadius: 10,
                      offset: Offset(0.5, 0.5),
                      color: Colors.blue)
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '内容：',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ToastUtil.showToast('内容：');
                      },
                  ),
                  TextSpan(
                    text: _content,
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print(_content);
                        ToastUtil.showToast(_content);
                      },
                  )
                ],
              ),
            ),
          ),
          Text(_tip)
        ],
      ),
    );
  }
}

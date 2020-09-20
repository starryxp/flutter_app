import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class ButtonPage extends StatelessWidget {
  final tip = '''
    1.1简介
        Flutter 里有很多的 Button 组件很多，常见的按钮组件有： 
          RaisedButton ：凸起的按钮，其实就是 Material Design 风格的 Button
          FlatButton ：扁平化的按钮
          OutlineButton：线框按钮
          IconButton ：图标按钮
          ButtonBar：按钮组
          FloatingActionButton:浮动按钮
    1.2常用属性
        按钮组件有以下常用属性：
            onPressed ：必填参数，按下按钮时触发的回调，接收一个方法，传 null 表示按钮禁用，会显示禁用相关样式 
            child ：可以放入wight
            textColor ：文本颜色 
            color ：文本颜色 
            disabledColor ：按钮禁用时的颜色 
            disabledTextColor ：按钮禁用时的文本颜色 
            splashColor ：点击按钮时水波纹的颜色
            highlightColor ：点击（长按）按钮后按钮的颜色
            elevation ：阴影的范围，值越大阴影范围越大
            padding ：内边距
            shape  ：设置按钮的形状
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Button：按钮'),
          Center(
            child: RaisedButton(
              padding: EdgeInsets.all(10),
              child: Text('圆角button'),
              elevation: 10,
              textColor: Colors.blue,
              highlightColor: Colors.red,
              onPressed: () {
                ToastUtil.showToast('click button');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.red,
            height: 100,
            child: RaisedButton(
              padding: EdgeInsets.all(10),
              child: Text('圆形button'),
              disabledColor: Colors.grey,
              disabledElevation: 5,
              elevation: 10,
              disabledTextColor: Colors.white,
              textColor: Colors.blue,
              highlightColor: Colors.red,
              // onPressed: () {
              //   ToastUtil.showToast('click button');
              // },
              //传 null 表示按钮禁用，会显示禁用相关样式
              onPressed: null,
              shape: CircleBorder(
                side: BorderSide(
                  color: Colors.yellow,
                  width: 5,
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton.icon(
                onPressed: () {
                  ToastUtil.showToast('搜索');
                },
                icon: Icon(Icons.search),
                label: Text('搜索')),
          ),
          Center(
            child: RaisedButton.icon(
                onPressed: () {
                  ToastUtil.showToast('扫码');
                },
                icon: Image.asset('images/scan.png'),
                label: Text('扫码')),
          ),
          Center(
            child: IconButton(
                icon: Icon(Icons.save_alt),
                onPressed: () {
                  ToastUtil.showToast('保存');
                }),
          ),
          Center(
            child: IconButton(
                icon: Image.asset('images/scan.png'),
                onPressed: () {
                  ToastUtil.showToast('保存');
                }),
          ),
          Center(
            child: OutlineButton(
                child: Text('OutlineButton'),
                onPressed: () {
                  ToastUtil.showToast('OutlineButton');
                }),
          ),
          Center(
            child: FlatButton(
                child: Text('FlatButton'),
                onPressed: () {
                  ToastUtil.showToast('FlatButton');
                }),
          ),
          Center(
            child: FloatingActionButton(
                child: Text('FloatingActionButton'),
                onPressed: () {
                  ToastUtil.showToast('FloatingActionButton');
                }),
          ),
          Center(
            child: FloatingActionButton(
                heroTag: '2',
                child: Icon(Icons.add),
                onPressed: () {
                  ToastUtil.showToast('FloatingActionButton');
                }),
          ),
          Container(
            child: ButtonBar(
              buttonPadding: EdgeInsets.all(10),
              buttonHeight: 50,
              alignment: MainAxisAlignment.start,
              buttonTextTheme: ButtonTextTheme.primary,
              layoutBehavior: ButtonBarLayoutBehavior.padded,
              children: [
                RaisedButton(
                  child: Text('button1'),
                  onPressed: () {
                    ToastUtil.showToast('button1');
                  },
                ),
                RaisedButton(
                  child: Text('button2'),
                  onPressed: () {
                    ToastUtil.showToast('button2');
                  },
                ),
                RaisedButton(
                  child: Text('button3'),
                  onPressed: () {
                    ToastUtil.showToast('button3');
                  },
                ),
              ],
            ),
          ),
          Text(tip),
        ],
      ),
    );
  }
}

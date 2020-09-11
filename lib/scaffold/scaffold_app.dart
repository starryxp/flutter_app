import 'package:flutter/material.dart';
import 'package:flutter_app/scaffold/ScaffoldHomePage.dart';

//应用跟布局
class ScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //构建Material Design 风格的应用程序
    return MaterialApp(
      //Android应用程序中任务栏中显示应用的名称
      title: "我的flutter:ScaffoldApp",
      //默认的首页面
      home: ScaffoldHomePage(),
    );
  }
}



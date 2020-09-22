import 'package:flutter/widgets.dart';

/// 首页数据
class HomeData {
  const HomeData({this.title,this.routerName,this.content});

  final String title;
  final String content;
  final String routerName;
}

class TabBean {
  const TabBean({this.title, this.icon});

  final String title;
  final IconData icon;
}

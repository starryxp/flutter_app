import 'package:flutter/widgets.dart';

/// 首页数据
class HomeData {
  const HomeData({this.title, this.routerName, this.content});

  final String title;
  final String content;
  final String routerName;
}

class TabBean {
  const TabBean({this.title, this.icon});

  final String title;
  final IconData icon;
}

class TypeBean {
  const TypeBean({this.name});

  final String name;
}

class StudentGradesBean {
  String name;
  int studentId;
  int language;
  int math;
  int english;
  int physical;
  int chemistry;
  int biological;
  int geography;
  int political;
  int history;
  bool isSelected;

  StudentGradesBean(
    this.name,
    this.studentId,
    this.language,
    this.math,
    this.english,
    this.physical,
    this.chemistry,
    this.biological,
    this.geography,
    this.political,
    this.history, {
    this.isSelected = false,
  });
}

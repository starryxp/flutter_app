import 'package:flutter/material.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarViewPage'),
      ),
    );
  }
}

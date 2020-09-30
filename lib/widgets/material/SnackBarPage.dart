import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [],
      ),
    );
  }
}

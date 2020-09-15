import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
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
        ],
      ),
    );
  }
}

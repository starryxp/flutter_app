import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.blue,
          width: 50,
          height: 50,
          child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

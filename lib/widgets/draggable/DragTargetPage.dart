import 'package:flutter/material.dart';

class DragTargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DragTarget'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(child: DragTarget(builder: (BuildContext context, List<T> candidateData, List<dynamic> rejectedData) {
            return Container(

            );
          }))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/route/NewRouterPage.dart';

class CounterPage extends StatefulWidget {
  final String title = "计数器";

  @override
  CounterPageState createState() {
    return CounterPageState();
  }
}

class CounterPageState extends State<CounterPage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('$counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}

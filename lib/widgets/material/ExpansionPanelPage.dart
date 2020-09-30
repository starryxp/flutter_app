import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [],
      ),
    );
  }
}

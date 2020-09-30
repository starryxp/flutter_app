import 'package:flutter/material.dart';

class ExpansionPanelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExpansionPanelPageState();
}

class _ExpansionPanelPageState extends State<ExpansionPanelPage> {
  _myExpansionPanel() {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) {
        return Text('title');
      },
      body: ListBody(
        children: [
          Text('内容1'),
          Text('内容2'),
          Text('内容3'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel'),
      ),
      body: ExpansionPanelList.radio(
        children: [
          _myExpansionPanel(),
        ],
      ),
    );
  }
}

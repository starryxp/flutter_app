import 'package:flutter/material.dart';

class EmailItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailItemPageState();
  }
}

class _EmailItemPageState extends State<EmailItemPage> with WidgetsBindingObserver {
  var _count = 0;

  @override
  void initState() {
    print('_EmailItemPageState initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    print('_EmailItemPageState didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('_EmailItemPageState build');
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('邮件'),
          Text('num：$_count'),
          RaisedButton(
            onPressed: () {
              _count++;
              setState(() {});
            },
            child: Text('num++'),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('_EmailItemPageState deactivate');
  }

  @override
  void didUpdateWidget(EmailItemPage oldWidget) {
    print('_EmailItemPageState didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print('_EmailItemPageState dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    print('_EmailItemPageState reassemble');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('_EmailItemPageState didChangeAppLifecycleState $state');
    super.didChangeAppLifecycleState(state);
  }

}

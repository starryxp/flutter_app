import 'package:flutter/material.dart';

class MineItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MineItemPageState();
  }
}

class _MineItemPageState extends State<MineItemPage> with WidgetsBindingObserver{
  var _count = 0;

  @override
  void initState() {
    print('_MineItemPageState initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    print('_MineItemPageState didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('_MineItemPageState build');
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('我的'),
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
    print('_MineItemPageState deactivate');
  }

  @override
  void didUpdateWidget(MineItemPage oldWidget) {
    print('_MineItemPageState didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    print('_MineItemPageState dispose');
    super.dispose();
  }


  @override
  void reassemble() {
    super.reassemble();
    print('_MineItemPageState reassemble');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('_MineItemPageState didChangeAppLifecycleState $state');
    super.didChangeAppLifecycleState(state);
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class HomeItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeItemPageState();
  }
}

class _HomeItemPageState extends State<HomeItemPage>
    with WidgetsBindingObserver, AutomaticKeepAliveClientMixin<HomeItemPage> {
  var _count = 0;

  @override
  void initState() {
    print('_HomeItemPageState initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    print('_HomeItemPageState didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('_HomeItemPageState build');
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('首页'),
          Text('num：$_count'),
          RaisedButton(
            onPressed: () {
              _count++;
              setState(() {});
            },
            child: Text('num++'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, Constant.homeHomePage);
            },
            child: Text('下一个页面'),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {

              });
            },
            child: Text('刷新页面'),
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('_HomeItemPageState deactivate');
  }

  @override
  void didUpdateWidget(HomeItemPage oldWidget) {
    print('_HomeItemPageState didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print('_HomeItemPageState dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    print('_HomeItemPageState reassemble');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('_HomeItemPageState didChangeAppLifecycleState $state');
    super.didChangeAppLifecycleState(state);
  }

  @override
  bool get wantKeepAlive => true;
}

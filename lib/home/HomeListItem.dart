import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({Key key, @required HomeData homeData})
      : _homeData = homeData,
        super(key: key);
  final HomeData _homeData;

  @override
  State<StatefulWidget> createState() {
    return _HomeListItemState();
  }
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              '${widget._homeData.title}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '${widget._homeData.content}',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        onPressed: () {
          print('${widget._homeData.title}');
          if (widget._homeData.routerName != null &&
              widget._homeData.routerName.isNotEmpty) {
            Navigator.pushNamed(context, widget._homeData.routerName);
          }
        },
      ),
    );
  }
}

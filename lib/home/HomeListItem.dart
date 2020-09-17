import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({Key key, @required HomeData homeData})
      : homeData = homeData,
        super(key: key);
  final HomeData homeData;

  @override
  State<StatefulWidget> createState() {
    return HomeListItemState();
  }
}

class HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              '${widget.homeData.title}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '${widget.homeData.content}',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        onPressed: () {
          print('${widget.homeData.title}');
          if (widget.homeData.routerName != null &&
              widget.homeData.routerName.isNotEmpty) {
            Navigator.pushNamed(context, widget.homeData.routerName);
          }
        },
      ),
    );
  }
}

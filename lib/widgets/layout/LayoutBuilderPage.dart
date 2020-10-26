import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class LayoutBuilderPage extends StatelessWidget {
  _myBuilder() {
    return Builder(builder: (BuildContext context) {
      return Container(
        width: 50,
        height: 50,
        color: Colors.blue,
      );
    });
  }

  _myLayoutBuilder() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print('constraints = $constraints');
      return Container(
        width: 50,
        height: 50,
        color: Colors.red,
      );
    });
  }


  _myStatefulBuilder() {
    var _color = Colors.green;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Container(
        width: 50,
        height: 50,
        color: _color,
        child: InkWell(
          onTap: () {
            setState(() {
              ToastUtil.showToast('onTap');
              _color = _color == Colors.amber ? Colors.green : Colors.amber;
            });
          },
        ),
      );
    });
  }

  _mySliverLayoutBuilder() {
    var _color = Colors.green;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverLayoutBuilder(
            builder: (BuildContext context, SliverConstraints constraints) {
          print('SliverConstraints  = $constraints');
          if (constraints.userScrollDirection == ScrollDirection.forward) {
            _color = Colors.blue;
          } else if (constraints.userScrollDirection == ScrollDirection.idle) {
            _color = Colors.green;
          } else {
            _color = Colors.cyan;
          }

          return SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: _color,
            ),
          );
        }),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Card(
            child: Container(
              height: 50,
              color: Colors.primaries[(index % 18)],
            ),
          );
        }, childCount: 80)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
      ),
      // body: Column(
      //   children: [
      //     _myBuilder(),
      //     _myLayoutBuilder(),
      //     _myStatefulBuilder(),
      //   ],
      // ),
      body: _mySliverLayoutBuilder(),
    );
  }
}

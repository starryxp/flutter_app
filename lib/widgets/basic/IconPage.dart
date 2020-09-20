import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class IconPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
              'Icon：Flutter 的图标类，它集成了 Material 风格的图标。它有几个衍生的组件：ImageIcon、IconButton 等。'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.blue,
                size: 24,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.red,
                size: 24,
              ),
              Icon(
                Icons.people,
                color: Colors.yellow,
                size: 24,
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24,
                ),
                onPressed: () {
                  ToastUtil.showToast('onPressed');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

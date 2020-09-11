import 'dart:io';

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('加载资源/网络/本地文件图片：'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    color: Colors.blue,
                    colorBlendMode: BlendMode.color,
                    image: AssetImage('images/scan.png'),
                  ),
                ),
                Expanded(
                  child: Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
                ),
                Expanded(
                  child: Image(
                    image: FileImage(File('')),
                    //byte 数组加载成图片
//                    image: MemoryImage(),
                  ),
                ),
              ],
            ),
          ),
          Text('加载图片：占位图'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Expanded(
                    child: FadeInImage.assetNetwork(
                  placeholder: 'images/scan.png',
                  image: 'qqqqqq',
                  width: 100,
                  height: 100,
                )),
                Expanded(
                    child: FadeInImage.assetNetwork(
                  placeholder: 'images/scan.png',
                  image:
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 100,
                  height: 100,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

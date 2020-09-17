import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final tip = '''
  Image是一个用于展示图片的组件。支持 JPEG、PNG、GIF、Animated GIF、WebP、Animated WebP、BMP 和 WBMP 等格式。
  1.1Image 有许多的静态函数：
      Image.asset - 用于从资源目录的显示图片,需要在 pubspec.yaml 文件中声明。
      Image.network - 用于从网络上显示图片。
      Image.file - 用于从文件里显示图片。
      Image.memory - 用于从内存里（Uint8List）显示图片。
  1.2Image 有以下常用属性：
      alignment → AlignmentGeometry - 图像边界内对齐图像。
      centerSlice → Rect - 九片图像的中心切片。
      color → Color - 该颜色与每个图像像素混合colorBlendMode。
      colorBlendMode → BlendMode - 用于 color 与此图像结合使用。
      fit → BoxFit - 图像在布局中分配的空间。
      gaplessPlayback → bool - 当图像提供者发生变化时，是继续显示旧图像（true）还是暂时不显示（false）。
      image → ImageProvider - 要显示的图像。
      matchTextDirection → bool - 是否在图像的方向上绘制图像 TextDirection。
      repeat → ImageRepeat - 未充分容器时，是否重复图片。
      height → double - 图像的高度。
      width → double - 图像的宽度。
   1.3fit：BoxFit
      BoxFit.contain	全图居中显示但不充满，显示原比例
      BoxFit.cover	图片可能拉伸，也可能裁剪，但是充满容器
      BoxFit.fill	全图显示且填充满，图片可能会拉伸
      BoxFit.fitHeight	图片可能拉伸，可能裁剪，高度充满
      BoxFit.fitWidth	图片可能拉伸，可能裁剪，宽度充满
      BoxFit.scaleDown	效果和contain差不多， 但是只能缩小图片，不能放大图片
  ''';

  final imageUrl =
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3363295869,2467511306&fm=26&gp=0.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('加载资源/网络/本地文件图片/内存图片：'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('images/scan.png'),
                  ),
                ),
                Expanded(
                  child: Image(image: NetworkImage(imageUrl)),
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
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  image: imageUrl,
                  width: 100,
                  height: 100,
                )),
                //也可以使用内存图片做占位图
                // Expanded(
                //     child: FadeInImage.memoryNetwork(
                //       placeholder:Uint8List ,
                //       image: imageUrl,
                //       width: 100,
                //       height: 100,
                //     ))
              ],
            ),
          ),
          Text('圆形图片：1.裁剪实现 2.CircleAvatar实现 3.Container边框实现'),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(imageUrl),
                  //半径越大，图片越大
                  radius: 50,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Text('圆角图片：1.裁剪实现 2.Container边框实现'),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          Text('fit->BoxFit：'),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
          Text(tip),
        ],
      ),
    );
  }
}

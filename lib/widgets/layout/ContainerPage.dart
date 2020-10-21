import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';

class ContainerPage extends StatelessWidget {
  final _tip = '''
1.Container介绍
- 一个拥有绘制、定位、调整大小的 widget。
2.Container属性
- alignment：对齐
- padding：内边距
- color：背景色
- decoration：背景装饰，跟color只能选其一
- foregroundDecoration：前景装饰
- width：
- height：
- constraints：约束
- margin：外边距
- transform：变换
- child：
3.Alignment属性
- Alignment.topLeft = Alignment(-1.0, -1.0)：
- Alignment.topCenter = Alignment(0.0, -1.0)：
- Alignment.topRight = Alignment(1.0, -1.0)：
- Alignment.centerLeft = Alignment(-1.0, 0.0)：
- Alignment.center = Alignment(0.0, 0.0)：
- Alignment.centerRight = Alignment(1.0, 0.0)：
- Alignment.bottomLeft = Alignment(-1.0, 1.0)：
- Alignment.bottomCenter = Alignment(0.0, 1.0)：
- Alignment.bottomRight = Alignment(1.0, 1.0)：
- Alignment()
- Alignment.lerp()
4.BoxDecoration属性
- color：背景色
- image：图片
- border：边框
- borderRadius：边框圆角
- boxShadow：阴影
- gradient：背景渐变
- backgroundBlendMode：图像混合,这个功能后面会单独讲解，内容也是比较多
- shape = BoxShape.rectangle：形状，用来做矩形、圆形
  ''';

  final _imageUrl =
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3363295869,2467511306&fm=26&gp=0.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        width: 200,
        // height: 300,
        color: Colors.amber,
        // alignment: Alignment.topLeft,
        // /*Alignment.lerp(Alignment.topLeft, Alignment.bottomRight, 0.25)*/
        child: Container(
          // width: 400,
          // height: 400,
          // color: Colors.blue,
          decoration: BoxDecoration(
            // color: Colors.blue,
            image: DecorationImage(
                image: NetworkImage(_imageUrl), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 1), //x,y轴
                color: Colors.grey, //投影颜色
                blurRadius: 3,
                spreadRadius: 3, //投影距离
              )
            ],
          ),
          foregroundDecoration: BoxDecoration(
            color: Color(0x55ffffff),
            // borderRadius: BorderRadius.circular(40),
            shape: BoxShape.circle,
          ),
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxHeight: 300,
            maxWidth: 300,
          ),
          child: Image.asset(AssetPathConstant.imageScan),
          // child: Icon(Icons.airline_seat_individual_suite),
        ),
      ),
    );
  }
}

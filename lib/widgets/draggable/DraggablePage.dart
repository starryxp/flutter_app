import 'package:flutter/material.dart';

class DraggablePage extends StatelessWidget {
  final _tip = '''
1.Draggable介绍
拖拽组件
2.Draggable属性
- child：子组件，未进行拖拽时显示
- feedback：跟随拖拽的组件
- data：用于对DragTarget传递data
- axis：Axis 拖拽方向，可以设置只能横向或者纵向拖拽
- childWhenDragging：拖拽时child子组件显示样式
- feedbackOffset = Offset.zero：
- dragAnchor = DragAnchor.child：
- affinity：此部件与其它手势的竞争方式 在非affinity方向上不响应拖动事件,一般用于在滚动组件
- maxSimultaneousDrags：同时支持拖动多少个点
- onDragStarted：拖动开始时调用
- onDraggableCanceled：在没有被DragTarget接受的情况下松开draggable时调用
- onDragEnd：拖动结束时调用
- onDragCompleted：Draggable被删除并被DragTarget接受时调用
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
        child: Draggable(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          feedback: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          childWhenDragging: Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          ),
          feedbackOffset: Offset(0, 10),
          dragAnchor: DragAnchor.child,
          onDragStarted: () {
            print("onDragStarted");
          },
          onDragEnd: (DraggableDetails details) {
            print("onDragEnd : $details");
          },
          onDraggableCanceled: (Velocity velocity, Offset offset) {
            print('onDraggableCanceled velocity:$velocity,offset:$offset');
          },
          onDragCompleted: () {
            print('onDragCompleted');
          },
        ),
      ),
    );
  }
}

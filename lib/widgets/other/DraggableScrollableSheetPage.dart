import 'package:flutter/material.dart';

class DraggableScrollableSheetPage extends StatelessWidget {
  final tip = '''
1.DraggableScrollableSheetPage介绍
拖拽滚动布局，非常方便的实现的拖拽面板
2.DraggableScrollableSheetPage属性
- initialChildSize = 0.5：拖拽布局初始化高度占父节点的比例
- minChildSize = 0.25：拖拽布局最小高度占父节点的比例
- maxChildSize = 0.1：拖拽布局最大高度占父节点的比例
- expand = true：拖拽布局是否展开，false：拖拽布局的尺寸约束为当前尺寸，true：拖拽布局的尺寸约束为撑满父节点
- builder：内部需要是滑动布局，设置滑动布局的ScrollController为builder中的ScrollController
3.DraggableScrollableNotification
- minExtent：拖拽布局最小高度
- maxExtent：拖拽布局最大高度
- initialExtent：拖拽布局初始化高度
- extent：拖拽布局当前高度
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableScrollableSheet"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          NotificationListener<DraggableScrollableNotification>(
            onNotification: (notification) {
              print('####################');
              print('minExtent = ${notification.minExtent}');
              print('maxExtent = ${notification.maxExtent}');
              print('initialExtent = ${notification.initialExtent}');
              print('extent = ${notification.extent}');
              print('####################');
              return true;
            },
            child: DraggableScrollableSheet(
              builder: (
                BuildContext context,
                ScrollController scrollController,
              ) {
                return Container(
                  color: Colors.amber,
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      title: Text('item $index'),
                    ),
                    itemCount: 30,
                    controller: scrollController,
                  ),
                );
              },
              initialChildSize: 0.8,
              minChildSize: 0.25,
              maxChildSize: 0.8,
              expand: true,
            ),
          )
        ],
      ),
    );
  }
}

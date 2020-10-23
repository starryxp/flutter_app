import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  final _tip = '''
1.Table介绍
为其子widget使用表格布局算法的widget
2.Table属性
- children = const <TableRow>[]：
- columnWidths：列宽 Map<int, TableColumnWidth>
- defaultColumnWidth = const FlexColumnWidth(1.0)：未在columnWidths中指定的列的列宽
- textDirection：文本方向
- border：Table的边框 TableBorder
- defaultVerticalAlignment = TableCellVerticalAlignment.top：TableCell垂直方向对其方式
- textBaseline = TextBaseline.alphabetic：文本基线
3.TableRow属性
- decoration：装饰
- children
4.TableColumnWidth
- FixedColumnWidth(value)：固定列宽
- FlexColumnWidth(value)：使用剩余空间的列宽，如果由多个按照value为权重分配
- FractionColumnWidth(value)：百分比列宽 = value*(Table.maxWidth)
- IntrinsicColumnWidth(value)：适应内容来分配列宽，value为权重分配额外空间，这个方法比较耗费性能
- MaxColumnWidth(TableColumnWidth a,TableColumnWidth b)：取a，b中大的那个为列宽
- MinColumnWidth(TableColumnWidth a,TableColumnWidth b)：取a，b中小的那个为列宽
5.TableBorder
- top = BorderSide.none：上边框
- right = BorderSide.none：右边框
- bottom = BorderSide.none：下边框
- left = BorderSide.none：左边框
- horizontalInside = BorderSide.none：内部横向线
- verticalInside = BorderSide.none：内部纵向线
6.TableCellVerticalAlignment
- top：TableCell位于单元格顶部
- middle：TableCell位于单元格中部
- bottom：TableCell位于单元格底部
- baseline：TableCell位于基线
- fill：TableCell铺满单元格，根据官方注释，如果设置这个Table的每行高度都会变为0
  ''';

  _myTableRowList() {
    return [
      TableRow(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        children: [
          Text(
            '姓名',
            textAlign: TextAlign.center,
          ),
          Text(
            '性别',
            textAlign: TextAlign.center,
          ),
          Text(
            '年龄',
            textAlign: TextAlign.center,
          ),
        ],
      ),
      TableRow(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        children: [
          Text(
            '张三',
            textAlign: TextAlign.center,
          ),
          Text(
            '男',
            textAlign: TextAlign.center,
          ),
          Text(
            '18',
            textAlign: TextAlign.center,
          ),
        ],
      ),
      TableRow(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        children: [
          Text(
            '李四',
            textAlign: TextAlign.center,
          ),
          Text(
            '男',
            textAlign: TextAlign.center,
          ),
          Text(
            '20',
            textAlign: TextAlign.center,
          ),
        ],
      ),
      TableRow(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        children: [
          Text('王二'),
          Text('男男男男男男男'),
          Text('24'),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        children: _myTableRowList(),
        columnWidths: {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
          2: IntrinsicColumnWidth(flex: 1),
        },
        border: TableBorder(
          top: BorderSide(
            color: Colors.red,
            width: 2,
            style: BorderStyle.solid,
          ),
          left: BorderSide(
            color: Colors.blue,
            width: 2,
            style: BorderStyle.solid,
          ),
          right: BorderSide(
            color: Colors.amber,
            width: 2,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.green,
            width: 2,
            style: BorderStyle.solid,
          ),
          horizontalInside: BorderSide(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
          verticalInside: BorderSide(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      ),
    );
  }
}

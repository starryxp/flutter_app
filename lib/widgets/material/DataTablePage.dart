import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';

class DataTablePage extends StatefulWidget {
  final _tip = '''
1.DataTable介绍
数据表显示表格数据，需要设置行和列
2.DataTable属性
- columns：DataColumn 行
- sortColumnIndex：索引在行的位置
- sortAscending = true：升序/降序 只有UI变化，排序需要自己实现
- onSelectAll：全选回调，默认实现全选操作
- dataRowHeight = kMinInteractiveDimension：数据内容每列高度
- headingRowHeight = 56.0：头部每列高度
- horizontalMargin = 24.0：表格左右外边距
- columnSpacing = 56.0：行每个子节点宽度
- showCheckboxColumn = true：是否显示Checkbox
- dividerThickness = 1.0：间隔线高度
- rows：DataRow 列
3.DataColumn属性
- label：子widget
- tooltip：长按提示
- numeric = false：是否右对齐
- onSort：升序/降序
4.DataRow属性
- selected = false：是否选中
- onSelectChanged：选中回调
- color：背景色
- cells：子widgets
5.DataCell属性
- child：子widget
- placeholder = false：是都占位
- showEditIcon = false：是否展示编辑
- onTap：点击事件
  ''';

  @override
  State<StatefulWidget> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  var _sortColumnIndex = 1;
  var _sortAscending = false;

  var _typeList = [
    TypeBean(name: '姓名'),
    TypeBean(name: '学号'),
    TypeBean(name: '语文'),
    TypeBean(name: '数学'),
    TypeBean(name: '英语'),
    TypeBean(name: '物理'),
    TypeBean(name: '化学'),
    TypeBean(name: '生物'),
    TypeBean(name: '地理'),
    TypeBean(name: '政治'),
    TypeBean(name: '历史'),
  ];

  List<DataColumn> _dataColumnList = [];

  var _studentGradesList = [
    StudentGradesBean('张三', 1, 89, 88, 100, 76, 81, 77, 95, 85, 80),
    StudentGradesBean('李四', 2, 95, 100, 90, 72, 65, 88, 66, 79, 96),
    StudentGradesBean('王二', 3, 100, 67, 87, 96, 89, 69, 79, 78, 73),
    StudentGradesBean('麻子', 4, 85, 75, 86, 91, 100, 66, 100, 90, 83),
    StudentGradesBean('王五', 5, 89, 88, 100, 76, 81, 77, 95, 85, 80),
    StudentGradesBean('赵四', 6, 95, 100, 90, 72, 65, 88, 66, 79, 96),
    StudentGradesBean('陈二', 7, 100, 67, 87, 96, 89, 69, 79, 78, 73),
    StudentGradesBean('李世民', 8, 85, 75, 86, 91, 100, 66, 100, 90, 83),
    StudentGradesBean('王老六', 9, 89, 88, 100, 76, 81, 77, 95, 85, 80),
    StudentGradesBean('狗子', 10, 95, 100, 90, 72, 65, 88, 66, 79, 96),
    StudentGradesBean('丑娃', 11, 100, 67, 87, 96, 89, 69, 79, 78, 73),
    StudentGradesBean('石头', 12, 85, 75, 86, 91, 100, 66, 100, 90, 83),
    StudentGradesBean('二妞', 13, 89, 88, 100, 76, 81, 77, 95, 85, 80),
    StudentGradesBean('大妞', 14, 95, 100, 90, 72, 65, 88, 66, 79, 96),
    StudentGradesBean('黑皮', 15, 100, 67, 87, 96, 89, 69, 79, 78, 73),
    StudentGradesBean('大胆儿', 16, 85, 75, 86, 91, 100, 66, 100, 90, 83),
  ];

  List<DataRow> _dataRowList = [];

  _myDataTable() {
    return DataTable(
      columns: _myDataColumnList(),
      rows: _myDataRowList(),
      sortColumnIndex: _sortColumnIndex,
      sortAscending: _sortAscending,
      // onSelectAll: (isSelectAll) {
      //   print('onSelectAll isSelectAll = $isSelectAll');
      // },
      dataRowHeight: 40,
      headingRowHeight: 55,
      horizontalMargin: 20,
      columnSpacing: 50,
      showCheckboxColumn: true,
      dividerThickness: 2,
    );
  }

  _myDataColumn(TypeBean bean) {
    return DataColumn(
      label: Text(
        bean.name,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      tooltip: '${bean.name}',
      numeric: false,
      onSort: (int columnIndex, bool ascending) {
        print('DataColumn columnIndex = $columnIndex ascending = $ascending');
        setState(() {
          _sortColumnIndex = columnIndex;
          _sortAscending = ascending;
          _sort();
        });
      },
    );
  }

  _sort() {
    _studentGradesList.sort((s1, s2) {
      dynamic compareA;
      dynamic compareB;
      switch (_sortColumnIndex) {
        case 0:
          compareA = s1.name;
          compareB = s2.name;
          break;
        case 1:
          compareA = s1.studentId;
          compareB = s2.studentId;
          break;
        case 2:
          compareA = s1.language;
          compareB = s2.language;
          break;
        case 3:
          compareA = s1.math;
          compareB = s2.math;
          break;
        case 4:
          compareA = s1.english;
          compareB = s2.english;
          break;
        case 5:
          compareA = s1.physical;
          compareB = s2.physical;
          break;
        case 6:
          compareA = s1.chemistry;
          compareB = s2.chemistry;
          break;
        case 7:
          compareA = s1.biological;
          compareB = s2.biological;
          break;
        case 8:
          compareA = s1.geography;
          compareB = s2.geography;
          break;
        case 9:
          compareA = s1.political;
          compareB = s2.political;
          break;
        case 10:
          compareA = s1.history;
          compareB = s2.history;
          break;
        default:
          compareA = s1.studentId;
          compareB = s2.studentId;
          _sortColumnIndex = 1;
          break;
      }
      if (!_sortAscending) {
        return compareA.compareTo(compareB);
      } else {
        return compareB.compareTo(compareA);
      }
    });
  }

  _myDataColumnList() {
    if (_dataColumnList.length > 0) {
      _dataColumnList.clear();
    }
    _typeList.forEach((element) {
      _dataColumnList.add(_myDataColumn(element));
    });
    return _dataColumnList;
  }

  _myDataCell(String s) {
    return DataCell(
      Text(s),
      placeholder: false,
      showEditIcon: true,
      onTap: () {
        print('DataCell onTap $s');
      },
    );
  }

  _myDataRow(StudentGradesBean bean) {
    return DataRow(
      cells: [
        _myDataCell(bean.name),
        _myDataCell(bean.studentId.toString()),
        _myDataCell(bean.language.toString()),
        _myDataCell(bean.math.toString()),
        _myDataCell(bean.english.toString()),
        _myDataCell(bean.physical.toString()),
        _myDataCell(bean.chemistry.toString()),
        _myDataCell(bean.biological.toString()),
        _myDataCell(bean.geography.toString()),
        _myDataCell(bean.political.toString()),
        _myDataCell(bean.history.toString()),
      ],
      selected: bean.isSelected,
      onSelectChanged: (isSelected) {
        print('DataRow onSelectChanged = $isSelected');
        setState(() {
          bean.isSelected = isSelected;
        });
      },
      color: _MyMaterialStateColor(
        Colors.amber.value,
        isSelected: bean.isSelected,
      ),
    );
  }

  _myDataRowList() {
    if (_dataRowList.length > 0) {
      _dataRowList.clear();
    }
    _studentGradesList.forEach((element) {
      _dataRowList.add(_myDataRow(element));
    });
    return _dataRowList;
  }

  @override
  void initState() {
    super.initState();
    _myDataColumnList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _myDataTable(),
        ),
      ),
    );
  }
}

class _MyMaterialStateColor extends MaterialStateColor {
  _MyMaterialStateColor(int defaultValue, {this.isSelected})
      : super(defaultValue);
  bool isSelected;

  @override
  Color resolve(Set<MaterialState> states) {
    if (isSelected) {
      return Colors.red;
    }
    return Colors.amber;
  }
}

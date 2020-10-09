import 'package:flutter/material.dart';

class DateTimePickersPage extends StatefulWidget {
  final _tip = '''
1.Date & Time Pickers介绍
- DatePicker：日期选择器
- DateRangePicker：范围日期选择器
- TimePicker：时间选择器
2.DatePicker属性
- context：BuildContext
- initialDate：DateTime 初始化选中日期
- firstDate：DateTime 日历开始日期
- lastDate：DateTime 日历结束日期
- currentDate：DateTime 当前日期
- initialEntryMode：DatePickerEntryMode.calendar 初始化样式，是日历样式还是输入框样式
- selectableDayPredicate：SelectableDayPredicate 日历可选日期范围
- helpText：帮助文本
- cancelText：取消文本
- confirmText：确认文本
- locale：Locale 
- textDirection：TextDirection 文本方向
- builder：TransitionBuilder 
- initialDatePickerMode：DatePickerMode.day 日历初始化展示日还是年
- errorFormatText：DatePickerEntryMode.input模式下输入日期时格式错误提示
- errorInvalidText：DatePickerEntryMode.input模式下日期超出范围提醒
- fieldHintText：DatePickerEntryMode.input模式下日期输入的提示文本
- fieldLabelText：DatePickerEntryMode.input模式下日期输入悬浮提示文本
3.DateRangePicker属性
- context：BuildContext
- initialDateRange：DateTime 初始化选中日期范围
- firstDate：DateTime 日历开始日期
- lastDate：DateTime 日历结束日期
- currentDate：DateTime 当前日期
- initialEntryMode：DatePickerEntryMode.calendar 初始化样式，是日历样式还是输入框样式
- helpText：帮助文本
- cancelText：取消文本
- confirmText：确认文本
- saveText: 保存文本
- locale：Locale 
- textDirection：TextDirection 文本方向
- builder：TransitionBuilder 
- initialDatePickerMode：DatePickerMode.day 日历初始化展示日还是年
- errorFormatText：DatePickerEntryMode.input模式下输入日期时格式错误提示
- errorInvalidText：DatePickerEntryMode.input模式下日期超出范围提醒
- fieldStartLabelText: DatePickerEntryMode.input模式下开始日期悬浮提示
- fieldStartHintText: DatePickerEntryMode.input模式下开始日期输入提示
- fieldEndHintText: DatePickerEntryMode.input模式下结束日期悬浮提示
- fieldEndLabelText: DatePickerEntryMode.input模式下结束日期输入提示
4.TimePicker属性
- context,
- initialTime：TimeOfDay 初始化时间
- builder：TransitionBuilder
- initialEntryMode：TimePickerEntryMode.dial
- helpText：帮助文本
- cancelText：取消文本
- confirmText：确认文本
  ''';

  @override
  State<StatefulWidget> createState() => _DateTimePickersPageState();
}

class _DateTimePickersPageState extends State<DateTimePickersPage> {
  var _date = '';
  var _dateRange = '';
  var _time = '';

  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: DateTime(2020, 5, 10),
      firstDate: DateTime(2019, 2, 10),
      lastDate: DateTime(2021, 2, 10),
      currentDate: DateTime(2020, 5, 12),
      initialEntryMode: DatePickerEntryMode.calendar,
      selectableDayPredicate: (nowDate) {
        return nowDate.isAfter(DateTime(2020, 5, 9)) &&
            nowDate.isBefore(DateTime(2020, 5, 22));
      },
      helpText: '帮助文本：这是一个单选日期选择器',
      cancelText: '取消',
      confirmText: '确定',
      initialDatePickerMode: DatePickerMode.day,
      errorFormatText: '输入日期格式错误',
      errorInvalidText: '输入日期超出可选范围',
      fieldHintText: '请输入日期',
      fieldLabelText: '日期',
      textDirection: TextDirection.ltr,
      builder: (context, widget) {
        return Theme(
          data: ThemeData.dark(),
          child: widget,
        );
      },
    );
    setState(() {
      if (result != null) {
        _date = '${result.year}年${result.month}月${result.day}日';
      }
    });
  }

  _showDateRangePicker() async {
    var result = await showDateRangePicker(
      context: context,
      initialDateRange: DateTimeRange(
          start: DateTime(2020, 5, 9), end: DateTime(2020, 5, 22)),
      firstDate: DateTime(2020, 4, 10),
      lastDate: DateTime(2020, 6, 10),
      currentDate: DateTime(2020, 5, 12),
      initialEntryMode: DatePickerEntryMode.calendar,
      helpText: '帮助文本：这是一个范围日期选择器',
      cancelText: '取消',
      confirmText: '确定',
      errorFormatText: '输入日期格式错误',
      errorInvalidText: '输入日期超出可选范围',
      saveText: '保存',
      fieldStartLabelText: '开始日期',
      fieldStartHintText: '请输入开始日期',
      fieldEndHintText: '请输入结束日期',
      fieldEndLabelText: '结束日期',
      textDirection: TextDirection.ltr,
      // builder: (context, widget) {
      //   return Theme(
      //     data: ThemeData.dark(),
      //     child: widget,
      //   );
      // },
    );
    setState(() {
      if (result != null) {
        _dateRange =
            '${result.start.year}年${result.start.month}月${result.start.day}日 - ${result.end.year}年${result.end.month}月${result.end.day}日';
      }
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 17, minute: 30),
      // builder: (context, widget) {
      //   return Theme(
      //     data: ThemeData.dark(),
      //     child: widget,
      //   );
      // },
      helpText: '帮助文本：这是一个时间选择器',
      cancelText: '取消',
      confirmText: '确定',
      initialEntryMode: TimePickerEntryMode.dial,
    );
    setState(() {
      if (result != null) {
        _time = '${result.hour}小时${result.minute}分钟';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date & Time Pickers'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('选择的日期是：$_date'),
          RaisedButton(
            onPressed: () {
              _showDatePicker();
            },
            child: Text('日期选择（单选）'),
          ),
          Text('选择的日期是：$_dateRange'),
          RaisedButton(
            onPressed: () {
              _showDateRangePicker();
            },
            child: Text('日期选择（范围选）'),
          ),
          Text('选择的时间是：$_time'),
          RaisedButton(
            onPressed: () {
              _showTimePicker();
            },
            child: Text('时间选择'),
          ),
        ],
      ),
    );
  }
}

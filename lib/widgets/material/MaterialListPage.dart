import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class MaterialListPage extends StatelessWidget {
  final _dataList = [
    HomeData(
        title: 'App结构和导航',
        content: '',
        routerName: RouterConstant.widgetsMaterialNavigationNavigationListPage),
    HomeData(
        title: '按钮',
        content: '',
        routerName: RouterConstant.widgetsMaterialButtonMaterialButtonPage),
    HomeData(
        title: 'TextField',
        content: '文本输入框',
        routerName: RouterConstant.widgetsMaterialTextFieldPage),
    HomeData(
        title: 'Checkbox',
        content: '复选框，允许用户从一组中选择多个选项。',
        routerName: RouterConstant.widgetsMaterialCheckboxPage),
    HomeData(
        title: 'Radio',
        content: '单选框，允许用户从一组中选择一个选项。',
        routerName: RouterConstant.widgetsMaterialRadioPage),
    HomeData(
        title: 'Switch',
        content: 'On/off 用于切换一个单一状态',
        routerName: RouterConstant.widgetsMaterialSwitchPage),
    HomeData(
        title: 'Slider',
        content: '滑块，允许用户通过滑动滑块来从一系列值中选择。',
        routerName: RouterConstant.widgetsMaterialSliderPage),
    HomeData(
        title: 'Date & Time Pickers',
        content: '日期&时间选择器',
        routerName: RouterConstant.widgetsMaterialDateTimePickersPage),
    HomeData(
        title: 'SimpleDialog',
        content: '简单对话框可以显示附加的提示或操作',
        routerName: RouterConstant.widgetsMaterialSimpleDialogPage),
    HomeData(
        title: 'AlertDialog',
        content: '一个会中断用户操作的对话款，需要用户确认',
        routerName: RouterConstant.widgetsMaterialAlertDialogPage),
    HomeData(
        title: 'BottomSheet',
        content:
            'BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出',
        routerName: RouterConstant.widgetsMaterialBottomSheetPage),
    HomeData(
        title: 'SnackBar',
        content: '具有可选操作的轻量级消息提示，在屏幕的底部显示。',
        routerName: RouterConstant.widgetsMaterialSnackBarPage),
    HomeData(
        title: 'Image',
        content: '一个显示图片的widget',
        routerName: RouterConstant.widgetsBasicImagePage),
    HomeData(
        title: 'Icon',
        content: 'A Material Design icon.',
        routerName: RouterConstant.widgetsBasicIconPage),
    HomeData(
        title: 'Tooltip',
        content:
            '一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。',
        routerName: RouterConstant.widgetsMaterialTooltipPage),
    HomeData(
        title: 'Card',
        content: '一个 Material Design 卡片。拥有一个圆角和阴影',
        routerName: RouterConstant.widgetsMaterialCardPage),
    HomeData(
        title: 'DataTable',
        content: '数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件',
        routerName: RouterConstant.widgetsMaterialDataTablePage),
    HomeData(
        title: 'LinearProgressIndicator\nCircularProgressIndicator',
        content: '一个线性进度条，一个圆形进度条',
        routerName: RouterConstant.widgetsMaterialProgressIndicatorPage),
    HomeData(
        title: 'Chip',
        content: '标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人。',
        routerName: RouterConstant.widgetsMaterialChipPage),
    HomeData(
        title: 'ListView\nListTile\nRefreshIndicator',
        content: '列表组件,文本小组件,刷新组件',
        routerName: RouterConstant.widgetsMaterialListViewPage),
    HomeData(
        title: 'ExpansionPanelList\nExpansionPanel\nExpansionPanelRadio\nExpansionTile',
        content: '扩展面板',
        routerName: RouterConstant.widgetsMaterialExpansionPanelListPage),
    HomeData(
        title: 'Stepper',
        content: '一个Material Design 步骤指示器，显示一系列步骤的过程',
        routerName: RouterConstant.widgetsMaterialStepperPage),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Widgets')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

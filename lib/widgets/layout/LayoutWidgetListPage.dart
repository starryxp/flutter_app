import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CustomBean.dart';
import 'package:flutter_app/home/HomeListItem.dart';
import 'package:flutter_app/utils/Constant.dart';

class LayoutWidgetListPage extends StatefulWidget {
  final _dataList = [
    HomeData(
        title: 'Container',
        content: '一个拥有绘制、定位、调整大小的 widget。',
        routerName: RouterConstant.widgetsLayoutContainerPage),
    HomeData(
        title: 'Padding',
        content: '一个widget, 会给其子widget添加指定的填充',
        routerName: RouterConstant.widgetsLayoutPaddingPage),
    HomeData(
        title: 'Center',
        content: '将其子widget居中显示在自身内部的widget',
        routerName: RouterConstant.widgetsLayoutCenterPage),
    HomeData(
        title: 'Center',
        content: '将其子widget居中显示在自身内部的widget',
        routerName: RouterConstant.widgetsLayoutCenterPage),
    HomeData(
        title: 'Align',
        content: '一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小。',
        routerName: RouterConstant.widgetsLayoutAlignPage),
    HomeData(
        title: 'FittedBox',
        content: '按自己的大小调整其子widget的大小和位置。',
        routerName: RouterConstant.widgetsLayoutFittedBoxPage),
    HomeData(
        title: 'AspectRatio',
        content: '一个widget，试图将子widget的大小指定为某个特定的长宽比',
        routerName: RouterConstant.widgetsLayoutAspectRatioPage),
    HomeData(
        title: 'ConstrainedBox',
        content: '对其子项施加附加约束的widget',
        routerName: RouterConstant.widgetsLayoutConstrainedBoxPage),
    HomeData(
        title: 'Baseline',
        content: '根据子项的基线对它们的位置进行定位的widget。',
        routerName: RouterConstant.widgetsLayoutBaselinePage),
    HomeData(
        title: 'FractionallySizedBox',
        content:
            '一个widget，它把它的子项放在可用空间的一小部分。关于布局算法的更多细节，见RenderFractionallySizedOverflowBox',
        routerName: RouterConstant.widgetsLayoutFractionallySizedBoxPage),
    HomeData(
        title: 'IntrinsicWidth\nIntrinsicHeight',
        content: '一个widget，它将它的子widget的宽度/高度调整其本身实际的宽度/高度',
        routerName: RouterConstant.widgetsLayoutIntrinsicWidthHeightPage),
    HomeData(
        title: 'LimitedBox',
        content: '一个当其自身不受约束时才限制其大小的盒子',
        routerName: RouterConstant.widgetsLayoutLimitedBoxPage),
    HomeData(
        title: 'Offstage',
        content: '一个布局widget，可以控制其子widget的显示和隐藏。',
        routerName: RouterConstant.widgetsLayoutOffstagePage),
    HomeData(
        title: 'OverflowBox',
        content: '对其子项施加不同约束的widget，它可能允许子项溢出父级。',
        routerName: RouterConstant.widgetsLayoutOverflowBoxPage),
    HomeData(
        title: 'SizedBox',
        content:
            '一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小。',
        routerName: RouterConstant.widgetsLayoutSizedBoxPage),
    HomeData(
        title: 'SizedOverflowBox',
        content: '一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出。',
        routerName: RouterConstant.widgetsLayoutSizedOverflowBoxPage),
    HomeData(
        title: 'Transform',
        content: '在绘制子widget之前应用转换的widget。',
        routerName: RouterConstant.widgetsLayoutTransformPage),
    HomeData(
        title: 'UnconstrainedBox',
        content: '消除约束的widget',
        routerName: RouterConstant.widgetsLayoutUnconstrainedBoxPage),
    HomeData(
        title: 'CustomSingleChildLayout',
        content: '一个自定义的拥有单个子widget的布局widget',
        routerName: RouterConstant.widgetsLayoutCustomSingleChildLayoutPage),
    HomeData(
        title: 'Stack\nPositioned',
        content: '可以允许其子widget简单的堆叠在一起\nStack内定位的组件',
        routerName: RouterConstant.widgetsLayoutStackPage),
  ];

  @override
  State<StatefulWidget> createState() => _LayoutWidgetListPageState();
}

class _LayoutWidgetListPageState extends State<LayoutWidgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout组件'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
            widget._dataList.map((e) => HomeListItem(homeData: e)).toList(),
      ),
    );
  }
}

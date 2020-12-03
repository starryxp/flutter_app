import 'package:flutter/cupertino.dart';
import 'package:flutter_app/counter/CounterPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/matrix4/Matrix4Page.dart';
import 'package:flutter_app/route/LoginPage.dart';
import 'package:flutter_app/route/NeedLoginPage.dart';
import 'package:flutter_app/route/NewRouterPage.dart';
import 'package:flutter_app/route/TipRouterPage.dart';
import 'package:flutter_app/widgets/WidgetsListPage.dart';
import 'package:flutter_app/widgets/basic/BasicListPage.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/widgets/basic/AppbarPage.dart';
import 'package:flutter_app/widgets/basic/ButtonPage.dart';
import 'package:flutter_app/widgets/basic/ColumnPage.dart';
import 'package:flutter_app/widgets/basic/FlutterLogoPage.dart';
import 'package:flutter_app/widgets/basic/IconPage.dart';
import 'package:flutter_app/widgets/basic/ImagePage.dart';
import 'package:flutter_app/widgets/basic/PlaceholderPage.dart';
import 'package:flutter_app/widgets/basic/RowPage.dart';
import 'package:flutter_app/widgets/basic/ScaffoldPage.dart';
import 'package:flutter_app/widgets/basic/TextPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoActivityIndicatorPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoAlertDialogPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoButtonPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoDialogPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoPageScaffoldPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoSliderPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoSwitchPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoTabScaffoldPage.dart';
import 'package:flutter_app/widgets/cupertino/CupertinoWidgetList.dart';
import 'package:flutter_app/widgets/draggable/DragTargetPage.dart';
import 'package:flutter_app/widgets/draggable/DraggablePage.dart';
import 'package:flutter_app/widgets/draggable/DraggableWidgetListPage.dart';
import 'package:flutter_app/widgets/draggable/LongPressDraggablePage.dart';
import 'package:flutter_app/widgets/layout/AlignPage.dart';
import 'package:flutter_app/widgets/layout/AspectRatioPage.dart';
import 'package:flutter_app/widgets/layout/BaselinePage.dart';
import 'package:flutter_app/widgets/layout/CenterPage.dart';
import 'package:flutter_app/widgets/layout/ConstrainedBoxPage.dart';
import 'package:flutter_app/widgets/layout/CustomMultiChildLayoutPage.dart';
import 'package:flutter_app/widgets/layout/CustomSingleChildLayoutPage.dart';
import 'package:flutter_app/widgets/layout/FittedBoxPage.dart';
import 'package:flutter_app/widgets/layout/FlowPage.dart';
import 'package:flutter_app/widgets/layout/FractionallySizedBoxPage.dart';
import 'package:flutter_app/widgets/layout/IndexedStackPage.dart';
import 'package:flutter_app/widgets/layout/IntrinsicWidthHeightPage.dart';
import 'package:flutter_app/widgets/layout/LayoutBuilderPage.dart';
import 'package:flutter_app/widgets/layout/LayoutWidgetListPage.dart';
import 'package:flutter_app/widgets/basic/ContainerPage.dart';
import 'package:flutter_app/widgets/layout/ContainerPage.dart'
    as LayoutContainerPage;
import 'package:flutter_app/widgets/layout/LimitedBoxPage.dart';
import 'package:flutter_app/widgets/layout/ListBodyPage.dart';
import 'package:flutter_app/widgets/layout/OffstagePage.dart';
import 'package:flutter_app/widgets/layout/OverflowBoxPage.dart';
import 'package:flutter_app/widgets/layout/PaddingPage.dart';
import 'package:flutter_app/widgets/layout/SizedBoxPage.dart';
import 'package:flutter_app/widgets/layout/SizedOverflowBoxPage.dart';
import 'package:flutter_app/widgets/layout/StackPage.dart';
import 'package:flutter_app/widgets/layout/TablePage.dart';
import 'package:flutter_app/widgets/layout/TransformPage.dart';
import 'package:flutter_app/widgets/layout/UnconstrainedBoxPage.dart';
import 'package:flutter_app/widgets/layout/WrapPage.dart';
import 'package:flutter_app/widgets/material/AlertDialogPage.dart';
import 'package:flutter_app/widgets/material/BottomSheetPage.dart';
import 'package:flutter_app/widgets/material/CardPage.dart';
import 'package:flutter_app/widgets/material/CheckboxPage.dart';
import 'package:flutter_app/widgets/material/ChipPage.dart';
import 'package:flutter_app/widgets/material/DataTablePage.dart';
import 'package:flutter_app/widgets/material/DateTimePickersPage.dart';
import 'package:flutter_app/widgets/material/ExpansionPanelListPage.dart';
import 'package:flutter_app/widgets/material/ListViewPage.dart';
import 'package:flutter_app/widgets/material/MaterialListPage.dart';
import 'package:flutter_app/widgets/material/ProgressIndicatorPage.dart';
import 'package:flutter_app/widgets/material/RadioPage.dart';
import 'package:flutter_app/widgets/material/SimpleDialogPage.dart';
import 'package:flutter_app/widgets/material/SliderPage.dart';
import 'package:flutter_app/widgets/material/SnackBarPage.dart';
import 'package:flutter_app/widgets/material/StepperPage.dart';
import 'package:flutter_app/widgets/material/SwitchPage.dart';
import 'package:flutter_app/widgets/material/TextFieldPage.dart';
import 'package:flutter_app/widgets/material/TooltipPage.dart';
import 'package:flutter_app/widgets/material/button/MaterialButtonPage.dart';
import 'package:flutter_app/widgets/material/navigation/BottomNavigationBarPage.dart';
import 'package:flutter_app/widgets/material/navigation/DrawerPage.dart';
import 'package:flutter_app/widgets/material/navigation/MaterialAppPage.dart';
import 'package:flutter_app/widgets/material/navigation/NavigationListPage.dart';
import 'package:flutter_app/widgets/material/navigation/PageViewPage.dart';
import 'package:flutter_app/widgets/material/navigation/TabBarPage.dart';
import 'package:flutter_app/widgets/material/navigation/TabBarViewPage.dart';
import 'package:flutter_app/widgets/draggable/DraggableScrollableSheetPage.dart';
import 'package:flutter_app/widgets/other/NotificationListenerPage.dart';
import 'package:flutter_app/widgets/other/OtherWidgetListPage.dart';
import 'package:flutter_app/widgets/scroll/GridViewPage.dart';
import 'package:flutter_app/widgets/scroll/NestedScrollViewPage.dart';
import 'package:flutter_app/widgets/scroll/ScrollWidgetListPage.dart';
import 'package:flutter_app/widgets/scroll/ScrollbarPage.dart';
import 'package:flutter_app/widgets/scroll/SingleChildScrollViewPage.dart';
import 'package:flutter_app/widgets/sliver/CustomScrollViewPage.dart';
import 'package:flutter_app/widgets/sliver/SliverAppBarPage.dart';
import 'package:flutter_app/widgets/sliver/SliverFixedExtentListPage.dart';
import 'package:flutter_app/widgets/sliver/SliverGridPage.dart';
import 'package:flutter_app/widgets/sliver/SliverListPage.dart';
import 'package:flutter_app/widgets/sliver/SliverPaddingPage.dart';
import 'package:flutter_app/widgets/sliver/SliverPersistentHeaderPage.dart';
import 'package:flutter_app/widgets/sliver/SliverPrototypeExtentListPage.dart';
import 'package:flutter_app/widgets/sliver/SliverToBoxAdapterPage.dart';
import 'package:flutter_app/widgets/sliver/SliverWidgetListPage.dart';
import 'Constant.dart';

class RouteTable {
  static final homeRouterTable = {
    'new_router_page': (context) => NewRouterPage(),
    'tip_router_page': (context) =>
        TipRouterPage(text: '我是提示:命名路由打开TipRouterPage'),
    'tip_router_page2': (context) =>
        TipRouterPage(text: ModalRoute.of(context).settings.arguments),
    'counter_page': (context) => CounterPage(),
    'need_login_page': (context) =>
        NeedLoginPage(id: ModalRoute.of(context).settings.arguments),
    'login_page': (context) => LoginPage(),

    RouterConstant.homeHomePage: (context) => HomePage(),

    //widgets
    RouterConstant.widgetsWidgetsListPage: (context) => WidgetsListPage(),

    //Matrix4矩阵变换
    RouterConstant.matrix4Matrix4Page: (context) => Matrix4Page(),
    //基础组件
    RouterConstant.widgetsBasicBasicListPage: (context) => BasicListPage(),
    RouterConstant.widgetsBasicContainerPage: (context) => ContainerPage(),
    RouterConstant.widgetsBasicRowPage: (context) => RowPage(),
    RouterConstant.widgetsBasicColumnPage: (context) => ColumnPage(),
    RouterConstant.widgetsBasicImagePage: (context) => ImagePage(),
    RouterConstant.widgetsBasicTextPage: (context) => TextPage(),
    RouterConstant.widgetsBasicIconPage: (context) => IconPage(),
    RouterConstant.widgetsBasicButtonPage: (context) => ButtonPage(),
    RouterConstant.widgetsBasicScaffoldPage: (context) => ScaffoldPage(),
    RouterConstant.widgetsBasicAppbarPage: (context) => AppbarPage(),
    RouterConstant.widgetsBasicFlutterLogoPage: (context) => FlutterLogoPage(),
    RouterConstant.widgetsBasicPlaceholderPage: (context) => PlaceholderPage(),
    //Material组件
    RouterConstant.widgetsMaterialMaterialListPage: (context) =>
        MaterialListPage(),
    RouterConstant.widgetsMaterialNavigationNavigationListPage: (context) =>
        NavigationListPage(),
    RouterConstant.widgetsMaterialNavigationBottomNavigationBarPage:
        (context) => BottomNavigationBarPage(),
    RouterConstant.widgetsMaterialNavigationPageViewPage: (context) =>
        PageViewPage(),
    RouterConstant.widgetsMaterialNavigationTabBarPage: (context) =>
        TabBarPage(),
    RouterConstant.widgetsMaterialNavigationTabBarViewPage: (context) =>
        TabBarViewPage(),
    RouterConstant.widgetsMaterialNavigationMaterialApp: (context) =>
        MaterialAppPage(),
    RouterConstant.widgetsMaterialNavigationDrawerPage: (context) =>
        DrawerPage(),
    RouterConstant.widgetsMaterialButtonMaterialButtonPage: (context) =>
        MaterialButtonPage(),
    RouterConstant.widgetsMaterialTextFieldPage: (context) => TextFieldPage(),
    RouterConstant.widgetsMaterialCheckboxPage: (context) => CheckboxPage(),
    RouterConstant.widgetsMaterialRadioPage: (context) => RadioPage(),
    RouterConstant.widgetsMaterialSwitchPage: (context) => SwitchPage(),
    RouterConstant.widgetsMaterialSliderPage: (context) => SliderPage(),
    RouterConstant.widgetsMaterialDateTimePickersPage: (context) =>
        DateTimePickersPage(),
    RouterConstant.widgetsMaterialSimpleDialogPage: (context) =>
        SimpleDialogPage(),
    RouterConstant.widgetsMaterialAlertDialogPage: (context) =>
        AlertDialogPage(),
    RouterConstant.widgetsMaterialBottomSheetPage: (context) =>
        BottomSheetPage(),
    RouterConstant.widgetsMaterialSnackBarPage: (context) => SnackBarPage(),
    RouterConstant.widgetsMaterialTooltipPage: (context) => TooltipPage(),
    RouterConstant.widgetsMaterialCardPage: (context) => CardPage(),
    RouterConstant.widgetsMaterialDataTablePage: (context) => DataTablePage(),
    RouterConstant.widgetsMaterialProgressIndicatorPage: (context) =>
        ProgressIndicatorPage(),
    RouterConstant.widgetsMaterialChipPage: (context) => ChipPage(),
    RouterConstant.widgetsMaterialListViewPage: (context) => ListViewPage(),
    RouterConstant.widgetsMaterialExpansionPanelListPage: (context) =>
        ExpansionPanelListPage(),
    RouterConstant.widgetsMaterialStepperPage: (context) => StepperPage(),
    //Cupertino组件
    RouterConstant.widgetsCupertinoCupertinoWidgetListPage: (context) =>
        CupertinoWidgetListPage(),
    RouterConstant.widgetsCupertinoCupertinoActivityIndicatorPage: (context) =>
        CupertinoActivityIndicatorPage(),
    RouterConstant.widgetsCupertinoCupertinoAlertDialogPage: (context) =>
        CupertinoAlertDialogPage(),
    RouterConstant.widgetsCupertinoCupertinoButtonPage: (context) =>
        CupertinoButtonPage(),
    RouterConstant.widgetsCupertinoCupertinoDialogPage: (context) =>
        CupertinoDialogPage(),
    RouterConstant.widgetsCupertinoCupertinoSliderPage: (context) =>
        CupertinoSliderPage(),
    RouterConstant.widgetsCupertinoCupertinoSwitchPage: (context) =>
        CupertinoSwitchPage(),
    RouterConstant.widgetsCupertinoCupertinoPageScaffoldPage: (context) =>
        CupertinoPageScaffoldPage(),
    RouterConstant.widgetsCupertinoCupertinoTabScaffoldPage: (context) =>
        CupertinoTabScaffoldPage(),
    //Layout组件
    RouterConstant.widgetsLayoutLayoutWidgetListPage: (context) =>
        LayoutWidgetListPage(),
    RouterConstant.widgetsLayoutContainerPage: (context) =>
        LayoutContainerPage.ContainerPage(),
    RouterConstant.widgetsLayoutPaddingPage: (context) => PaddingPage(),
    RouterConstant.widgetsLayoutCenterPage: (context) => CenterPage(),
    RouterConstant.widgetsLayoutAlignPage: (context) => AlignPage(),
    RouterConstant.widgetsLayoutFittedBoxPage: (context) => FittedBoxPage(),
    RouterConstant.widgetsLayoutAspectRatioPage: (context) => AspectRatioPage(),
    RouterConstant.widgetsLayoutConstrainedBoxPage: (context) =>
        ConstrainedBoxPage(),
    RouterConstant.widgetsLayoutBaselinePage: (context) => BaselinePage(),
    RouterConstant.widgetsLayoutFractionallySizedBoxPage: (context) =>
        FractionallySizedBoxPage(),
    RouterConstant.widgetsLayoutIntrinsicWidthHeightPage: (context) =>
        IntrinsicWidthHeightPage(),
    RouterConstant.widgetsLayoutLimitedBoxPage: (context) => LimitedBoxPage(),
    RouterConstant.widgetsLayoutOffstagePage: (context) => OffstagePage(),
    RouterConstant.widgetsLayoutOverflowBoxPage: (context) => OverflowBoxPage(),
    RouterConstant.widgetsLayoutSizedBoxPage: (context) => SizedBoxPage(),
    RouterConstant.widgetsLayoutSizedOverflowBoxPage: (context) =>
        SizedOverflowBoxPage(),
    RouterConstant.widgetsLayoutTransformPage: (context) => TransformPage(),
    RouterConstant.widgetsLayoutUnconstrainedBoxPage: (context) =>
        UnconstrainedBoxPage(),
    RouterConstant.widgetsLayoutCustomSingleChildLayoutPage: (context) =>
        CustomSingleChildLayoutPage(),
    RouterConstant.widgetsLayoutStackPage: (context) => StackPage(),
    RouterConstant.widgetsLayoutIndexedStackPage: (context) =>
        IndexedStackPage(),
    RouterConstant.widgetsLayoutFlowPage: (context) => FlowPage(),
    RouterConstant.widgetsLayoutTablePage: (context) => TablePage(),
    RouterConstant.widgetsLayoutWrapPage: (context) => WrapPage(),
    RouterConstant.widgetsLayoutListBodyPage: (context) => ListBodyPage(),
    RouterConstant.widgetsLayoutCustomMultiChildLayoutPage: (context) =>
        CustomMultiChildLayoutPage(),
    RouterConstant.widgetsLayoutLayoutBuilderPage: (context) =>
        LayoutBuilderPage(),
    //Sliver组件
    RouterConstant.widgetsSliverSliverWidgetListPage: (context) =>
        SliverWidgetListPage(),
    RouterConstant.widgetsSliverCustomScrollViewPage: (context) =>
        CustomScrollViewPage(),
    RouterConstant.widgetsSliverSliverAppBarPage: (context) =>
        SliverAppBarPage(),
    RouterConstant.widgetsSliverSliverListPage: (context) => SliverListPage(),
    RouterConstant.widgetsSliverSliverGridPage: (context) => SliverGridPage(),
    RouterConstant.widgetsSliverSliverPaddingPage: (context) =>
        SliverPaddingPage(),
    RouterConstant.widgetsSliverSliverFixedExtentListPage: (context) =>
        SliverFixedExtentListPage(),
    RouterConstant.widgetsSliverSliverToBoxAdapterPage: (context) =>
        SliverToBoxAdapterPage(),
    RouterConstant.widgetsSliverSliverPrototypeExtentListPage: (context) =>
        SliverPrototypeExtentListPage(),
    RouterConstant.widgetsSliverSliverPersistentHeaderPage: (context) =>
        SliverPersistentHeaderPage(),

    //scroll组件
    RouterConstant.widgetsScrollScrollWidgetListPage: (context) =>
        ScrollWidgetListPage(),
    RouterConstant.widgetsScrollGridViewPage: (context) => GridViewPage(),
    RouterConstant.widgetsScrollSingleChildScrollViewPage: (context) =>
        SingleChildScrollViewPage(),
    RouterConstant.widgetsScrollNestedScrollViewPage: (context) =>
        NestedScrollViewPage(),
    RouterConstant.widgetsScrollScrollbarPage: (context) => ScrollbarPage(),

    //other
    RouterConstant.widgetsOtherOtherWidgetListPage: (context) =>
        OtherWidgetListPage(),
    RouterConstant.widgetsOtherNotificationListenerPage: (context) =>
        NotificationListenerPage(),

    //draggable组件
    RouterConstant.widgetsDraggableDraggableWidgetListPage: (context) =>
        DraggableWidgetListPage(),
    RouterConstant.widgetsDraggableDraggableScrollableSheetPage: (context) =>
        DraggableScrollableSheetPage(),
    RouterConstant.widgetsDraggableDraggablePage: (context) => DraggablePage(),
    RouterConstant.widgetsDraggableDragTargetPage: (context) =>
        DragTargetPage(),
    RouterConstant.widgetsDraggableLongPressDraggablePage: (context) =>
        LongPressDraggablePage(),
  };
}

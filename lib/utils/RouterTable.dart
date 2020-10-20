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
import 'package:flutter_app/widgets/layout/AlignPage.dart';
import 'package:flutter_app/widgets/layout/AspectRatioPage.dart';
import 'package:flutter_app/widgets/layout/BaselinePage.dart';
import 'package:flutter_app/widgets/layout/CenterPage.dart';
import 'package:flutter_app/widgets/layout/ConstrainedBoxPage.dart';
import 'package:flutter_app/widgets/layout/FittedBoxPage.dart';
import 'package:flutter_app/widgets/layout/FractionallySizedBoxPage.dart';
import 'package:flutter_app/widgets/layout/IntrinsicWidthHeightPage.dart';
import 'package:flutter_app/widgets/layout/LayoutWidgetListPage.dart';
import 'package:flutter_app/widgets/basic/ContainerPage.dart';
import 'package:flutter_app/widgets/layout/ContainerPage.dart'
    as LayoutContainerPage;
import 'package:flutter_app/widgets/layout/LimitedBoxPage.dart';
import 'package:flutter_app/widgets/layout/OffstagePage.dart';
import 'package:flutter_app/widgets/layout/OverflowBoxPage.dart';
import 'package:flutter_app/widgets/layout/PaddingPage.dart';
import 'package:flutter_app/widgets/layout/SizedBoxPage.dart';
import 'package:flutter_app/widgets/layout/SizedOverflowBoxPage.dart';
import 'package:flutter_app/widgets/layout/TransformPage.dart';
import 'package:flutter_app/widgets/layout/UnconstrainedBoxPage.dart';
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

    Constant.homeHomePage: (context) => HomePage(),

    //组件
    Constant.widgetsWidgetsListPage: (context) => WidgetsListPage(),
    //Matrix4矩阵变换
    Constant.matrix4Matrix4Page: (context) => Matrix4Page(),
    //基础组件
    Constant.widgetsBasicBasicListPage: (context) => BasicListPage(),
    Constant.widgetsBasicContainerPage: (context) => ContainerPage(),
    Constant.widgetsBasicRowPage: (context) => RowPage(),
    Constant.widgetsBasicColumnPage: (context) => ColumnPage(),
    Constant.widgetsBasicImagePage: (context) => ImagePage(),
    Constant.widgetsBasicTextPage: (context) => TextPage(),
    Constant.widgetsBasicIconPage: (context) => IconPage(),
    Constant.widgetsBasicButtonPage: (context) => ButtonPage(),
    Constant.widgetsBasicScaffoldPage: (context) => ScaffoldPage(),
    Constant.widgetsBasicAppbarPage: (context) => AppbarPage(),
    Constant.widgetsBasicFlutterLogoPage: (context) => FlutterLogoPage(),
    Constant.widgetsBasicPlaceholderPage: (context) => PlaceholderPage(),
    //Material组件
    Constant.widgetsMaterialMaterialListPage: (context) => MaterialListPage(),
    Constant.widgetsMaterialNavigationNavigationListPage: (context) =>
        NavigationListPage(),
    Constant.widgetsMaterialNavigationBottomNavigationBarPage: (context) =>
        BottomNavigationBarPage(),
    Constant.widgetsMaterialNavigationPageViewPage: (context) => PageViewPage(),
    Constant.widgetsMaterialNavigationTabBarPage: (context) => TabBarPage(),
    Constant.widgetsMaterialNavigationTabBarViewPage: (context) =>
        TabBarViewPage(),
    Constant.widgetsMaterialNavigationMaterialApp: (context) =>
        MaterialAppPage(),
    Constant.widgetsMaterialNavigationDrawerPage: (context) => DrawerPage(),
    Constant.widgetsMaterialButtonMaterialButtonPage: (context) =>
        MaterialButtonPage(),
    Constant.widgetsMaterialTextFieldPage: (context) => TextFieldPage(),
    Constant.widgetsMaterialCheckboxPage: (context) => CheckboxPage(),
    Constant.widgetsMaterialRadioPage: (context) => RadioPage(),
    Constant.widgetsMaterialSwitchPage: (context) => SwitchPage(),
    Constant.widgetsMaterialSliderPage: (context) => SliderPage(),
    Constant.widgetsMaterialDateTimePickersPage: (context) =>
        DateTimePickersPage(),
    Constant.widgetsMaterialSimpleDialogPage: (context) => SimpleDialogPage(),
    Constant.widgetsMaterialAlertDialogPage: (context) => AlertDialogPage(),
    Constant.widgetsMaterialBottomSheetPage: (context) => BottomSheetPage(),
    Constant.widgetsMaterialSnackBarPage: (context) => SnackBarPage(),
    Constant.widgetsMaterialTooltipPage: (context) => TooltipPage(),
    Constant.widgetsMaterialCardPage: (context) => CardPage(),
    Constant.widgetsMaterialDataTablePage: (context) => DataTablePage(),
    Constant.widgetsMaterialProgressIndicatorPage: (context) =>
        ProgressIndicatorPage(),
    Constant.widgetsMaterialChipPage: (context) => ChipPage(),
    Constant.widgetsMaterialListViewPage: (context) => ListViewPage(),
    Constant.widgetsMaterialExpansionPanelListPage: (context) =>
        ExpansionPanelListPage(),
    Constant.widgetsMaterialStepperPage: (context) => StepperPage(),
    //Cupertino组件
    Constant.widgetsCupertinoCupertinoWidgetListPage: (context) =>
        CupertinoWidgetListPage(),
    Constant.widgetsCupertinoCupertinoActivityIndicatorPage: (context) =>
        CupertinoActivityIndicatorPage(),
    Constant.widgetsCupertinoCupertinoAlertDialogPage: (context) =>
        CupertinoAlertDialogPage(),
    Constant.widgetsCupertinoCupertinoButtonPage: (context) =>
        CupertinoButtonPage(),
    Constant.widgetsCupertinoCupertinoDialogPage: (context) =>
        CupertinoDialogPage(),
    Constant.widgetsCupertinoCupertinoSliderPage: (context) =>
        CupertinoSliderPage(),
    Constant.widgetsCupertinoCupertinoSwitchPage: (context) =>
        CupertinoSwitchPage(),
    Constant.widgetsCupertinoCupertinoPageScaffoldPage: (context) =>
        CupertinoPageScaffoldPage(),
    Constant.widgetsCupertinoCupertinoTabScaffoldPage: (context) =>
        CupertinoTabScaffoldPage(),
    //Layout组件
    Constant.widgetsLayoutLayoutWidgetListPage: (context) =>
        LayoutWidgetListPage(),
    Constant.widgetsLayoutContainerPage: (context) =>
        LayoutContainerPage.ContainerPage(),
    Constant.widgetsLayoutPaddingPage: (context) => PaddingPage(),
    Constant.widgetsLayoutCenterPage: (context) => CenterPage(),
    Constant.widgetsLayoutAlignPage: (context) => AlignPage(),
    Constant.widgetsLayoutFittedBoxPage: (context) => FittedBoxPage(),
    Constant.widgetsLayoutAspectRatioPage: (context) => AspectRatioPage(),
    Constant.widgetsLayoutConstrainedBoxPage: (context) => ConstrainedBoxPage(),
    Constant.widgetsLayoutBaselinePage: (context) => BaselinePage(),
    Constant.widgetsLayoutFractionallySizedBoxPage: (context) =>
        FractionallySizedBoxPage(),
    Constant.widgetsLayoutIntrinsicWidthHeightPage: (context) =>
        IntrinsicWidthHeightPage(),
    Constant.widgetsLayoutLimitedBoxPage: (context) => LimitedBoxPage(),
    Constant.widgetsLayoutOffstagePage: (context) => OffstagePage(),
    Constant.widgetsLayoutOverflowBoxPage: (context) => OverflowBoxPage(),
    Constant.widgetsLayoutSizedBoxPage: (context) => SizedBoxPage(),
    Constant.widgetsLayoutSizedOverflowBoxPage: (context) =>
        SizedOverflowBoxPage(),
    Constant.widgetsLayoutTransformPage: (context) => TransformPage(),
    Constant.widgetsLayoutUnconstrainedBoxPage: (context) =>
        UnconstrainedBoxPage(),
  };
}

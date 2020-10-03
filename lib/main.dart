import 'package:flutter/material.dart';
import 'package:flutter_app/counter/CounterPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/route/LoginPage.dart';
import 'package:flutter_app/route/NeedLoginPage.dart';
import 'package:flutter_app/route/NewRouterPage.dart';
import 'package:flutter_app/route/TipRouterPage.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/widgets/WidgetsListPage.dart';
import 'package:flutter_app/widgets/basic/AppbarPage.dart';
import 'package:flutter_app/widgets/basic/BasicListPage.dart';
import 'package:flutter_app/widgets/basic/ButtonPage.dart';
import 'package:flutter_app/widgets/basic/ColumnPage.dart';
import 'package:flutter_app/widgets/basic/ContainerPage.dart';
import 'package:flutter_app/widgets/basic/FlutterLogoPage.dart';
import 'package:flutter_app/widgets/basic/IconPage.dart';
import 'package:flutter_app/widgets/basic/ImagePage.dart';
import 'package:flutter_app/widgets/basic/PlaceholderPage.dart';
import 'package:flutter_app/widgets/basic/RowPage.dart';
import 'package:flutter_app/widgets/basic/ScaffoldPage.dart';
import 'package:flutter_app/widgets/basic/TextPage.dart';
import 'package:flutter_app/widgets/material/AlertDialogPage.dart';
import 'package:flutter_app/widgets/material/BottomSheetPage.dart';
import 'package:flutter_app/widgets/material/CardPage.dart';
import 'package:flutter_app/widgets/material/CheckboxPage.dart';
import 'package:flutter_app/widgets/material/ChipPage.dart';
import 'package:flutter_app/widgets/material/DataTablePage.dart';
import 'package:flutter_app/widgets/material/DateTimePickersPage.dart';
import 'package:flutter_app/widgets/material/ExpansionPanelPage.dart';
import 'package:flutter_app/widgets/material/ListViewPage.dart';
import 'package:flutter_app/widgets/material/MaterialListPage.dart';
import 'package:flutter_app/widgets/material/ProgressIndicatorPage.dart';
import 'package:flutter_app/widgets/material/RadioPage.dart';
import 'package:flutter_app/widgets/material/SimpleDialogPage.dart';
import 'package:flutter_app/widgets/material/SliderPage.dart';
import 'package:flutter_app/widgets/material/SnackBarPage.dart';
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
import 'package:flutter_localizations/flutter_localizations.dart';

//this.navigatorKey, // 导航的key
//this.home, // 主页
//this.routes = const <String, WidgetBuilder>{},// 路由
//this.initialRoute,//初始路由
//this.onGenerateRoute,//生成路由
//this.onUnknownRoute,//位置路由
//this.navigatorObservers = const <NavigatorObserver>[],//导航的观察者
//this.builder,//widget的构建
//this.title = '',//设备用于识别用户的应用程序的单行描述。
//this.color,//背景颜色
//this.theme,//主题，用ThemeData
//this.locale,//app语言支持
//this.localizationsDelegates,//多语言代理
//this.localeResolutionCallback,//
//this.supportedLocales = const <Locale>[Locale('en', 'US')],//支持的多语言
//this.debugShowMaterialGrid = false,//显示网格
//this.showPerformanceOverlay = false,//打开性能监控，覆盖在屏幕最上面
//this.checkerboardRasterCacheImages = false,
//this.checkerboardOffscreenLayers = false,
//this.showSemanticsDebugger = false,//打开一个覆盖图，显示框架报告的可访问性信息 显示边框
//this.debugShowCheckedModeBanner = true,//右上角显示一个debug的图标

///本项目为学习使用，没有做精简代码的操作，只为熟练使用flutter开发，所以存在大量冗余代码
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter教学：从零开始',
      //国际化语言支持
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale('zh', 'CH')],
      theme: ThemeData(
        // 应用程序小部件使用的颜色。
        primarySwatch: Colors.blue,
      ),
//      onGenerateRoute: (settings) {
//        //onGenerateRoute只会对命名路由生效。
//        // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
//        // 引导用户登录；其它情况则正常打开路由。
//        String routeName = settings.name;
//        print("Open page: $routeName");
//        switch (routeName) {
//          case "need_login_page":
//            return MaterialPageRoute(builder: (context) {
//              return LoginPage();
//            });
//          default:
//            return MaterialPageRoute(builder: (BuildContext context) {
//              return Scaffold(
//                  body: Center(
//                child: Text("Page not found"),
//              ));
//            });
//        }
//      },
      //注册路由表
      routes: _routerTable,
      home: HomePage(),
    );
  }

  final _routerTable = {
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
    Constant.widgetsMaterialExpansionPanelPage: (context) =>
        ExpansionPanelPage(),
    Constant.widgetsMaterialSnackBarPage: (context) => SnackBarPage(),
    Constant.widgetsMaterialTooltipPage: (context) => TooltipPage(),
    Constant.widgetsMaterialCardPage: (context) => CardPage(),
    Constant.widgetsMaterialDataTablePage: (context) => DataTablePage(),
    Constant.widgetsMaterialProgressIndicatorPage: (context) =>
        ProgressIndicatorPage(),
    Constant.widgetsMaterialChipPage: (context) => ChipPage(),
    Constant.widgetsMaterialListViewPage: (context) => ListViewPage(),
  };
}

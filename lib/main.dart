import 'package:flutter/material.dart';
import 'package:flutter_app/counter/CounterPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/route/LoginPage.dart';
import 'package:flutter_app/route/NeedLoginPage.dart';
import 'package:flutter_app/route/NewRouterPage.dart';
import 'package:flutter_app/route/TipRouterPage.dart';
import 'package:flutter_app/scaffold/ScaffoldHomePage.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/widgets/WidgetsListPage.dart';
import 'package:flutter_app/widgets/basic/ContainerPage.dart';

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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      routes: routerTable,
      home: HomePage(),
    );
  }

  final routerTable = {
    'new_router_page': (context) => NewRouterPage(),
    'tip_router_page': (context) =>
        TipRouterPage(text: '我是提示:命名路由打开TipRouterPage'),
    'tip_router_page2': (context) =>
        TipRouterPage(text: ModalRoute.of(context).settings.arguments),
    'counter_page': (context) => CounterPage(),
    'scaffold_page': (context) => ScaffoldHomePage(),
    'need_login_page': (context) =>
        NeedLoginPage(id: ModalRoute.of(context).settings.arguments),
    'login_page': (context) => LoginPage(),
    Constant.homeHomePage: (context) => HomePage(),
    Constant.widgetsWidgetsListPage: (context) => WidgetsListPage(),
    Constant.widgetsBasicContainerPage: (context) => ContainerPage(),
  };
}

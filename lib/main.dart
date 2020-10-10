import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/utils/RouterTable.dart';

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

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter教学：从零开始',
      //国际化语言支持
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FallbackCupertinoLocalisationsDelegate(),
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
      routes: RouteTable.homeRouterTable,
      home: HomePage(),
    );
  }
}

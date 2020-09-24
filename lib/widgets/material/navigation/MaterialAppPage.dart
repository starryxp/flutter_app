import 'package:flutter/material.dart';

class MaterialAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp'),
      ),
      body: Center(
        child: Text(''' 
- navigatorKey, // 导航的key
- home, // 主页
- routes = const <String, WidgetBuilder>{},// 路由
- initialRoute,//初始路由
- onGenerateRoute,//生成路由
- onUnknownRoute,//位置路由
- navigatorObservers = const <NavigatorObserver>[],//导航的观察者
- builder,//widget的构建
- title = '',//设备用于识别用户的应用程序的单行描述。
- color,//背景颜色
- theme,//主题，用ThemeData
- locale,//app语言支持
- localizationsDelegates,//多语言代理
- localeResolutionCallback,//
- supportedLocales = const <Locale>[Locale('en', 'US')],//支持的多语言
- debugShowMaterialGrid = false,//显示网格
- showPerformanceOverlay = false,//打开性能监控，覆盖在屏幕最上面
- checkerboardRasterCacheImages = false,
- checkerboardOffscreenLayers = false,
- showSemanticsDebugger = false,//打开一个覆盖图，显示框架报告的可访问性信息 显示边框
- debugShowCheckedModeBanner = true,//右上角显示一个debug的图标
        '''),
      ),
    );
  }
}

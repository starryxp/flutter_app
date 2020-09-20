import 'package:flutter/material.dart';
import 'package:flutter_app/route/NewRouterPage.dart';
import 'package:flutter_app/route/TipRouterPage.dart';

class RouterFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var _isLogin = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('路由管理'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('open new route'),
              onPressed: () {
                //导航到新路由
                //MaterialPageRoute 构造函数的各个参数的意义：
                //builder: 是一个WidgetBuilder类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。我们通常要实现此回调，返回新路由的实例。
                //settings: 包含路由的配置信息，如路由名称、是否初始路由（首页）。
                //maintainState：默认情况下，当入栈一个新路由时，原来的路由仍然会被保存在内存中，如果想在路由没用的时候释放其所占用的所有资源，可以设置maintainState为false。
                //fullscreenDialog: 表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，新页面将会从屏幕底部滑入（而不是水平方向）。
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRouterPage();
                }));
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) {
//                  return NewRouterPage();
//                }));
              },
            ),
            RaisedButton(
              child: Text('路由打开提示页面'),
              onPressed: () async {
                //打开TipRouter 并等待返回结果
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TipRouterPage(
                      text: '我是提示:路由打开TipRouterPage',
                    );
                  }),
                );
                print('路由返回值 = $result');
              },
            ),
            RaisedButton(
              child: Text('命名路由打开提示页面'),
              onPressed: () async {
                //打开TipRouter 并等待返回结果
                var result =
                    await Navigator.pushNamed(context, 'tip_router_page');
                print('路由返回值 = $result');
              },
            ),
            RaisedButton(
              child: Text('命名路由参数传递打开提示页面'),
              onPressed: () async {
                //使用路由名称打开TipRouter 并等待返回结果
                var result = await Navigator.pushNamed(
                    context, 'tip_router_page2',
                    arguments: '我是提示:使用命名路由传输传递打开TipRouterPage');
                print('路由返回值 = $result');
              },
            ),
            RaisedButton(
              child: Text('路由实现登陆拦截'),
              onPressed: () {
                Navigator.pushNamed(context, 'need_login_page',arguments: 'id');
              },
            ),
          ],
        ),
      ),
    );
  }
}

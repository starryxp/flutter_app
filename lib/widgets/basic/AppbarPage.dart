import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class TabBean {
  const TabBean({this.title, this.icon});

  final String title;
  final IconData icon;
}

class AppbarPage extends StatefulWidget {
  final tabDataList = [
    TabBean(title: 'Tab1', icon: Icons.account_balance),
    TabBean(title: 'Tab2', icon: Icons.people),
    TabBean(title: 'Tab3', icon: Icons.save),
    TabBean(title: 'Tab4', icon: Icons.favorite),
    TabBean(title: 'Tab5', icon: Icons.home),
    TabBean(title: 'Tab6', icon: Icons.audiotrack),
    TabBean(title: 'Tab7', icon: Icons.add_shopping_cart),
  ];

  @override
  State<AppbarPage> createState() {
    return AppbarPageState();
  }
}

class AppbarPageState extends State<AppbarPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
        backgroundColor: Colors.yellow.shade700,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                ToastUtil.showToast('关注');
              }),
          PopupMenuButton<String>(
            padding: EdgeInsets.all(0),
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    Text(
                      '邮件邮件邮件',
                      style:
                          TextStyle(fontSize: 18, backgroundColor: Colors.red),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                value: 'mail',
              ),
              PopupMenuItem<String>(
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    Text(
                      '搜索',
                      style:
                          TextStyle(fontSize: 18, backgroundColor: Colors.red),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                value: 'search',
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'mail':
                  ToastUtil.showToast('mail');
                  break;
                case 'search':
                  ToastUtil.showToast('search');
                  break;
              }
            },
          ),
        ],
        bottom: TabBar(
          tabs: widget.tabDataList
              .map((e) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(e.icon), Text(e.title)],
                    ),
                  ))
              .toList(),
          isScrollable: true,
          controller:
              TabController(length: widget.tabDataList.length, vsync: this),
          labelColor: Colors.black,
          indicatorColor: Colors.red,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Center(
            child: Text('''
AppBar：顶端栏，对应着 Android 的 Toolbar
常用属性：
    leading → Widget - 在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮。
    title → Widget - Toolbar 中主要内容，通常显示为当前界面的标题文字。
    actions → List - 一个 Widget 列表，代表 Toolbar 中所显示的菜单，对于常用的菜单，通常使用 IconButton 来表示；对于不常用的菜单通常使用 PopupMenuButton 来显示为三个点，点击后弹出二级菜单。
    bottom → PreferredSizeWidget - 一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏。
    elevation → double - 控件的 z 坐标顺序，默认值为 4，对于可滚动的 SliverAppBar，当 SliverAppBar 和内容同级的时候，该值为 0， 当内容滚动 SliverAppBar 变为 Toolbar 的时候，修改 elevation 的值。
    flexibleSpace → Widget - 一个显示在 AppBar 下方的控件，高度和 AppBar 高度一样，可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用。
    backgroundColor → Color - Appbar 的颜色，默认值为 ThemeData.primaryColor。改值通常和下面的三个属性一起使用。
    brightness → Brightness - Appbar 的亮度，有白色和黑色两种主题，默认值为 ThemeData.primaryColorBrightness。
    iconTheme → IconThemeData - Appbar 上图标的颜色、透明度、和尺寸信息。默认值为 ThemeData.primaryIconTheme。
    textTheme → TextTheme - Appbar 上的文字样式。
    centerTitle → bool - 标题是否居中显示，默认值根据不同的操作系统，显示方式不一样。
    toolbarOpacity → double
          '''),
          ),
        ],
      ),
    );
  }
}

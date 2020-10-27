import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class SliverAppBarPage extends StatefulWidget {
  final _tip = '''
1.SliverAppBar介绍
一个Material Design App Bar，跟AppBar差不多，但是支持滚动折叠的效果
2.SliverAppBar属性
- leading：在标题前面显示的一个控件
- title：标题文字
- actions：功能菜单
- flexibleSpace：FlexibleSpaceBar 这里就是用于实现滚动折叠的效果的地方
- bottom：PreferredSizeWidget 通常用来实现Tab导航栏
- elevation：阴影
- shadowColor：阴影颜色
- forceElevated = false：当elevation 不为 0 的时候，是否显示阴影
- backgroundColor：背景色
- iconTheme：icon主题
- actionsIconTheme：功能菜单icon主题
- textTheme：文本主题
- centerTitle：标题是否居中显示
- collapsedHeight：折叠高度，不设置的话会折叠到SliverAppBar高度
- expandedHeight：展开高度
- floating = false：true 的时候下滑先展示SliverAppBar，展示完成后才展示其他滑动组件内容
- pinned = false：SliverAppBar收缩到最小高度的时候SliverAppBar是否可见，true：SliverAppBar会以折叠高度固定显示在头部，false：缩小到折叠高度后滑出页面
- snap = false：snap为true,floating也要为true才会有效果。true的时候会监听你的手势结束时的动作时是下滑，
那么SliverAppBar展开，上滑则是收缩折叠至上一次折叠的位置处，但是这个效果需要一个基础就是存在上一次折叠的位置，否则不生效
- stretch = false：true：SliverAppBar完全展开后是否可以继续拉伸，注意这个需要外部滑动组件physics的支持
（设置BouncingScrollPhysics()，滑动到标界可以继续滑动拥有回弹效果），否则是不会生效的
- stretchTriggerOffset = 100.0：拉伸监听触发的偏移
- onStretchTrigger：拉伸监听
- shape：SliverAppBar形状
- toolbarHeight = kToolbarHeight：SliverAppBar高度 默认56
- leadingWidth：leading宽度
3.FlexibleSpaceBar属性
- title：标题
- background：widget 背景
- centerTitle：标题是否居中
- titlePadding：标题内边距
- collapseMode = CollapseMode.parallax：折叠模式
- stretchModes = const <StretchMode>[StretchMode.zoomBackground]：拉伸模式
4.CollapseMode属性
- CollapseMode.none：背景不跟随滚动
- CollapseMode.parallax：背景跟随滚动但是具有滚动视差效果
- CollapseMode.pin：背景完全随着滚动
5.StretchMode属性
- zoomBackground：拉伸时背景会放大
- blurBackground：使用[ImageFilter.blur]效果，拉伸时背景将模糊
- fadeTitle：拉伸时FlexibleSpaceBar标题将消失
  ''';

  @override
  State<StatefulWidget> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  _myOnStretchTrigger() {
    ToastUtil.showToast('onStretchTrigger');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          title: Text('SliverAppBar'),
          expandedHeight: 250,
          collapsedHeight: 100,
          floating: false,
          pinned: true,
          snap: false,
          stretch: true,
          stretchTriggerOffset: 100,
          onStretchTrigger: () {
            return _myOnStretchTrigger();
          },
          flexibleSpace: FlexibleSpaceBar(
            title: Text('FlexibleSpaceBar title'),
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(ImageUrlConstant.imageUrl1),
                ),
              ),
              child: Center(
                child: Text(
                  'FlexibleSpaceBar background content',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            centerTitle: false,
            titlePadding: EdgeInsets.all(0),
            collapseMode: CollapseMode.parallax,
            stretchModes: [
              StretchMode.zoomBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.primaries[(index % 10)],
              );
            },
            childCount: 30,
          ),
        ),
      ],
    );
  }
}

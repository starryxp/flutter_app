import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class SwitchPage extends StatefulWidget {
  final _tip = '''
1.Switch/SwitchListTile介绍
2.Switch属性
- value：true：开 false：关
- onChanged：变化时回调
- activeColor：打开状态下颜色
- activeTrackColor：打开状态下track颜色
- inactiveThumbColor：关闭状态thumb颜色
- inactiveTrackColor：关闭状态track颜色
- activeThumbImage：打开状态下thumb图片
- onActiveThumbImageError：打开状态下thumb图片错误回调
- inactiveThumbImage：关闭状态thumb图片
- onInactiveThumbImageError：关闭状态thumb图片错误回调
- autofocus = false：  
3.SwitchListTile属性
- value：true：开 false：关
- onChanged：变化时回调
- activeColor：打开状态下颜色
- activeTrackColor：打开状态下track颜色
- inactiveThumbColor：关闭状态thumb颜色
- inactiveTrackColor：关闭状态track颜色
- activeThumbImage：打开状态下thumb图片
- inactiveThumbImage：关闭状态thumb图片
- title：主标题
- subtitle：副标题
- dense：是否是listView子节点
- contentPadding：内边距
- secondary：图标
- selected = false：是否选中
- autofocus = false：
- controlAffinity = ListTileControlAffinity.platform：  排列顺序
  ''';

  final _imageUrl =
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3363295869,2467511306&fm=26&gp=0.jpg';

  @override
  State<StatefulWidget> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var _onOff = true;

  _mySwitch() {
    return Switch(
      value: _onOff,
      activeColor: Colors.red,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.deepPurple,
      inactiveTrackColor: Colors.amber,
      activeThumbImage: AssetImage(AssetPathConstant.imageScan),
      inactiveThumbImage: NetworkImage(widget._imageUrl),
      onActiveThumbImageError: (e, s) {
        ToastUtil.showToast('onActiveThumbImageError');
      },
      onInactiveThumbImageError: (e, s) {
        ToastUtil.showToast('onActiveThumbImageError');
      },
      onChanged: (value) {
        setState(() {
          _onOff = value;
        });
      },
    );
  }

  _mySwitchListTile() {
    return SwitchListTile(
        value: _onOff,
        activeColor: Colors.red,
        activeTrackColor: Colors.green,
        inactiveThumbColor: Colors.deepPurple,
        inactiveTrackColor: Colors.amber,
        // activeThumbImage: AssetImage(AssetPathConstant.imageScan),
        // inactiveThumbImage: NetworkImage(widget._imageUrl),
        title: Text('开启灯光'),
        subtitle: Text('卧室灯'),
        dense: true,
        // contentPadding: EdgeInsets.all(10),
        selected: _onOff,
        secondary: Icon(Icons.people),
        controlAffinity: ListTileControlAffinity.platform,
        onChanged: (value) {
          setState(() {
            _onOff = value;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch/SwitchListTile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              _mySwitch(),
            ],
          ),
          _mySwitchListTile(),
        ],
      ),
    );
  }
}

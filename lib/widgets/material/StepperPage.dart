import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  final tip = '''
1.Stepper介绍
步骤指示器，显示一系列步骤的过程
2.Stepper属性
- steps：List<Step>
- physics：控制用户滚动视图的交互
  - AlwaysScrollableScrollPhysics:列表总是可滚动的。在iOS上会有回弹效果，在android上不会回弹。
  - PageScrollPhysics：一般是给PageView控件用的滑动效果。如果listview设置的话在滑动到末尾时会有个比较大的弹起和回弹
  - ClampingScrollPhysics：滚动时没有回弹效果，同android系统的listview效果
  - NeverScrollableScrollPhysics：就算内容超过列表范围也不会滑动
  - BouncingScrollPhysics：不论什么平台都会有回弹效果
- type = StepperType.vertical：
- currentStep = 0：
- onStepTapped：点击
- onStepContinue：下一个
- onStepCancel：取消
- controlsBuilder：自定义控制器
3.Step属性
- title：标题
- subtitle：副标题
- content：内容
- state = StepState.indexed：状态
- isActive = false：是否高亮
  ''';

  @override
  State<StatefulWidget> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  var _currentStep = 0;
  List<Step> _widgetList = [];

  _myStepper() {
    return Stepper(
      steps: _getStepList(),
      physics: AlwaysScrollableScrollPhysics(),
      // type: StepperType.vertical,
      type: StepperType.horizontal,
      currentStep: _currentStep,
      onStepTapped: (index) {
        print('onStepTapped index = $index');
        setState(() {
          _currentStep = index;
        });
      },
      onStepContinue: () {
        print('onStepContinue');
        setState(() {
          if (_currentStep < _widgetList.length - 1) {
            _currentStep++;
          }
        });
      },
      onStepCancel: () {
        print('onStepCancel');
        setState(() {
          if (_currentStep > 0) {
            _currentStep--;
          }
        });
      },
      controlsBuilder: (BuildContext context,
          {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
        return Row(
          children: [
            RaisedButton(
              child: Text('上一步'),
              onPressed: onStepCancel,
            ),
            RaisedButton(
              child: Text('下一步'),
              onPressed: onStepContinue,
            ),
          ],
        );
        return Container();
      },
    );
  }

  _myStep(int i) {
    return Step(
      title: Text('Step title$i'),
      subtitle: Text('Step subtitle$i'),
      content: Text('Step content$i'),
      state: _getStepState(i),
      isActive: _currentStep == i ? true : false,
    );
  }

  _getStepState(int i) {
    switch (i) {
      case 1:
        return StepState.editing;
      case 2:
        return StepState.disabled;
      case 3:
        return StepState.complete;
      case 4:
        return StepState.error;
      default:
        return StepState.indexed;
    }
  }

  _getStepList() {
    _widgetList.clear();
    for (var i = 0; i < 10; i++) {
      _widgetList.add(_myStep(i));
    }
    return _widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
      ),
      // body: _myStepper(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.grey,
          width: 2000,
          height: 200,
          child: _myStepper(),
        ),
      ),
    );
  }
}

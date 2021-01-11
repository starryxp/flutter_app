import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constant.dart';
import 'package:flutter_app/utils/ToastUtil.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
      ),
      body: RichText(
        text: TextSpan(
          text: '登陆即同意',
          style: TextStyle(color: Colors.black),
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Image.asset(
                AssetPathConstant.imageScan,
                width: 40,
                height: 40,
              ),
            ),
            TextSpan(
              text: '《服务条款》',
              style: TextStyle(color: Colors.red),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  ToastUtil.showToast('服务条款');
                },
            ),
            TextSpan(
              text: '和',
              style: TextStyle(color: Colors.black),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.bottom,
              child: Image.asset(
                AssetPathConstant.imageScan,
                width: 40,
                height: 40,
              ),
            ),
            TextSpan(
              text: '\n《隐私政策》',
              style: TextStyle(color: Colors.red),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  ToastUtil.showToast('隐私政策');
                },
            ),
          ],
        ),
      ),
    );
  }
}

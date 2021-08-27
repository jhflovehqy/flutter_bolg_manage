import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

/// @class : LoadingDialog
/// @date : 2021/08/18
/// @name : jhf
/// @description :公共加载弹窗
class LoadingDialog extends StatelessWidget {
  String text = '';

  LoadingDialog({
    Key? key,
    this.text = StringStyles.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material( //创建透明层
      type: MaterialType.transparency, //透明类型
      child: Center( //保证控件居中效果
        child: SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: const ShapeDecoration(
              color: Colors.black45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Lottie.asset(R.assetsLottieLoading,
                      width: 60, animate: true),
                ),
                Text(text, style: Styles.style_white_14)
              ],
            ),
          ),
        ),
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// @class : ScreenUtil
/// @name : jhf
/// @description :屏幕适配工具类
class ScreenUtil {
  ///去除状态栏半透明
  ///[context] 上下文
  static removeSystemTransparent(BuildContext context) {
    /// android 平台
    if (Theme.of(context).platform == TargetPlatform.android) {
      SystemUiOverlayStyle _style = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      );
      SystemChrome.setSystemUIOverlayStyle(_style);
    }
  }
}

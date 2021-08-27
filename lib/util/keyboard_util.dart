

import 'package:flutter/cupertino.dart';

/// @class : KeyboardUtils
/// @name : jhf
/// @description :软键盘相关工具类
class KeyboardUtils{


  ///隐藏软键盘
  ///[context] 上下文
  static hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

}






import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// @class : ToastUtils
/// @name : jhf
/// @description :显示toast
class ToastUtils{

  /// 显示toast
  ///[name] lottie名称
  static show(String name) {
    Fluttertoast.showToast(
        msg: name,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


}
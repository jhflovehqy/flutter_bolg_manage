

import 'package:flutter/services.dart';

/// @class : PlatformChannel
/// @name : jhf
/// @description :原生通讯
class PlatformChannel{

  ///通讯渠道名称
  static const channelName = "cn.i4.mobile.flutter/main";
  ///通讯Channel
  static var messageChannel = const MethodChannel(channelName);

  /// 显示Dialog加载弹窗
  /// [message] 显示的消息
  static Future<String?> showDialog(String message) async {
    return messageChannel.invokeMethod<String>("showDialog" , message);
  }

}
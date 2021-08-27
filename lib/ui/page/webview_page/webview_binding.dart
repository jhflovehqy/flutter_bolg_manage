import 'package:get/get.dart';

import 'webview_controller.dart';

/// @class : WebViewBinding
/// @date : 2021/08/24
/// @name : jhf
/// @description :webView binding层
class WebViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WebController());
  }
}

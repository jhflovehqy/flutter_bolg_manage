import 'package:get/get.dart';

import 'splash_controller.dart';

/// @class : SplashBinding
/// @date : 2021/08/16
/// @name : jhf
/// @description :启动页 binding层
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}

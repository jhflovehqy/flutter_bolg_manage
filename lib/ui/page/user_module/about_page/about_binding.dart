import 'package:get/get.dart';

import 'about_controller.dart';

/// @class : AboutBinding
/// @date : 2021/08/25
/// @name : jhf
/// @description :关于我们 binding层
class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>AboutController());
  }
}

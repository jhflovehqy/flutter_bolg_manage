import 'package:get/get.dart';

import 'setting_controller.dart';

/// @class : SettingBinding
/// @date : 2021/08/25
/// @name : jhf
/// @description :设置 binding层
class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>SettingController());
  }
}

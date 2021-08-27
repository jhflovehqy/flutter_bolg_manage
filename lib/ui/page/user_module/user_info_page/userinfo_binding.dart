import 'package:get/get.dart';

import 'userinfo_controller.dart';

/// @class : UserInfoBinding
/// @date : 2021/08/24
/// @name : jhf
/// @description :用户信息 binding层
class UserInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserInfoController());
  }
}

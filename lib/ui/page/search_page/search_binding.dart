import 'package:get/get.dart';

import 'search_controller.dart';

/// @class : SearchBinding
/// @date : 2021/9/3
/// @name : jhf
/// @description :积分明细 binding层
class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}

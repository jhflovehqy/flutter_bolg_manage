import 'package:get/get.dart';

import 'points_controller.dart';

/// @class : PointsBinding
/// @date : 2021/08/25
/// @name : jhf
/// @description :积分明细 binding层
class PointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>PointsController());
  }
}

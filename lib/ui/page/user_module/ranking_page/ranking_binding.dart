import 'package:get/get.dart';

import 'ranking_controller.dart';

/// @class : RankingBinding
/// @date : 2021/08/24
/// @name : jhf
/// @description :积分排行榜 binding层
class RankingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RankingController());
  }
}

import 'package:blog/ui/page/user_module/collect_page/collect_controller.dart';
import 'package:get/get.dart';


/// @class : CollectBinding
/// @date : 2021/08/27
/// @name : jhf
/// @description :我的收藏 binding层
class CollectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>CollectController());
  }
}

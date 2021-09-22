import 'package:blog/ui/page/user_module/share_page/share_controller.dart';
import 'package:get/get.dart';


/// @class : ShareBinding
/// @date : 2021/09/14
/// @name : jhf
/// @description :分享页面 binding层
class ShareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShareController());
  }
}

import 'package:blog/ui/page/user_module/feedback_page/feedback_controller.dart';
import 'package:get/get.dart';



class FeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackController());
  }
}

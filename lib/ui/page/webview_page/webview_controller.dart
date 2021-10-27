import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/model/web_model.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/util/toast_util.dart';
import 'package:get/get.dart';


/// @class : WebViewController
/// @date : 2021/08/24
/// @name : jhf
/// @description : WebView 控制器层
class WebController extends BaseGetController {

  ///加载URL
  WebEntity detail = Get.arguments;

  ///进度条
  var progress = 0.0.obs;

  ///是否点赞
  var isCollect = false.obs;

  ///控制收藏的取消与结束
  var collectAtState = false.obs;

  @override
  void onInit() {
    super.onInit();
    isCollect.value = detail.isCollect;
  }


  ///收藏&取消收藏
  ///注意此处，从收藏进入取消收藏的ID是originId
  collectArticle() {
    if(!isCollect.value){
      collectAtState.value = true;
      Future.delayed(const Duration(milliseconds: 900)).then((value)  {
        collectAtState.value = false;
      });
    }

    request.collectArticle(
        isCollect.value && detail.originId != 0? detail.originId : detail.id,
        isCollect: isCollect.value,
        success: (data) {
          ToastUtils.show(
              isCollect.value ? StringStyles.collectQuit.tr : StringStyles
                  .collectSuccess.tr);
          isCollect.value = !isCollect.value;
          update();
        });
  }


}

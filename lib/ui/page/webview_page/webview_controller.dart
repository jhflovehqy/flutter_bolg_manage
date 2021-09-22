import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/model/web_model.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


/// @class : WebViewController
/// @date : 2021/08/24
/// @name : jhf
/// @description : WebView 控制器层
class WebController extends BaseGetController {

  ///加载URL
  WebEntity detail =  Get.arguments;
  ///进度条
  var progress = 0.0.obs;
  ///是否点赞
  bool isCollect = false;

  @override
  void onInit() {
    super.onInit();
  }


  collectArticle(){
    request.collectArticle(detail.id ,isCollect :isCollect ,success: (data){
      ToastUtils.show(isCollect ? "取消收藏成功":"收藏成功");
      isCollect = !isCollect;
      update();
    });

  }


}

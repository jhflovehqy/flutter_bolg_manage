import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



/// @class : SplashController
/// @date : 2021/08/15
/// @name : jhf
/// @description :启动页 控制器层
class SplashController extends BaseGetController {

  ///用来控制动画的状态
  double opacityLevel = 0.0;

  @override
  void onInit() {
    super.onInit();
    lazyInitAnim();
  }

  lazyInitAnim(){
    ///必须延时一下等待绘制完毕，直接设置是没有效果滴
    Future.delayed(const Duration(milliseconds: 200), () {
       opacityLevel = 1.0;
       update();
    });
  }


}

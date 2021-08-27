import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/model/request_register.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



/// @class : MyController
/// @date : 2021/08/20
/// @name : jhf
/// @description :我的 控制器层
class MyController extends BaseGetController {

  ///用户信息
   late UserEntity userInfo;

  @override
  void onInit() {
    super.onInit();
    var info = SpUtil.getUserInfo();
    debugPrint("个人信息 $info");
    if(info != null){
      userInfo = info;
      update();
    }
  }






}

import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/http/request.dart';
import 'package:blog/http/request_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



/// @class : ComplexController
/// @date : 2021/08/23
/// @name : jhf
/// @description :综合页 控制器层
class ComplexController extends BaseGetController {


  @override
  void onInit() {
    super.onInit();
    requestTabModule();
  }

  requestTabModule(){
    Request.get<dynamic>(RequestApi.apiTab, {},dialog: false, success: (data) {
      debugPrint("信息>>>$data");
    }, fail: (code, msg) {

    });
  }






}


import 'dart:io';

import 'package:blog/base/get/get_extension.dart';
import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/util/keyboard_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FeedbackController extends BaseGetController {

  ///存储本地选择的图片
  List<File> photoEntity = [];
  ///问题
  String issue = '';
  ///联系方式
  String contact = '';



  /// 打开相册
  /// [index] 索引
  openGallery(int index) async {
    if (photoEntity.length >= 4) {
      ToastUtils.show(StringStyles.feedbackToast.tr);
      return;
    }
    if (index == photoEntity.length) {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        photoEntity.add(File(image.path));
      }
      update();
    }
  }

  ///由于没有反馈接口，因此延时2秒进行操作
  requestFeedback(BuildContext context){
    debugPrint("feedback >> issue == $issue");
    debugPrint("feedback >> contact == $contact");
    debugPrint("feedback >> photo == $photoEntity");
    if(issue.isEmpty){
      ToastUtils.show(StringStyles.feedbackContent.tr);
      return;
    }
    KeyboardUtils.hideKeyboard(context);
    Get.showLoading();
    Future.delayed(const Duration(seconds: 2)).then((value){
      Get.dismiss();
      ToastUtils.show(StringStyles.feedbackSuccess.tr);
      Get.back();
    });
  }

}

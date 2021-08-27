import 'package:blog/res/strings.dart';
import 'package:blog/ui/dialog/dialog_common_style.dart';
import 'package:blog/ui/dialog/dialog_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// @class : GetExtension
/// @date : 2021/08/18
/// @name : jhf
/// @description :get 扩展方法
extension GetExtension on GetInterface {
  ///隐藏dialog
  dismiss() {
    if (Get.isDialogOpen != null && Get.isDialogOpen!) {
      Get.back();
    }
  }

  ///显示dialog
  showLoading({String text = ''}) {
    if (Get.isDialogOpen != null && Get.isDialogOpen!) {
      Get.back();
    }
    Get.dialog(
        LoadingDialog(text: text.isEmpty ? StringStyles.loading.tr : text),
        transitionDuration: const Duration(milliseconds: 500),
        barrierDismissible: false);
  }

  ///显示公共弹窗
  showDialog({
    String title = '',
    String content = '',
    String backText = '',
    String nextText = '',
    bool backVisible = true,
    bool nextVisible = true,
    VoidCallback? backTap,
    VoidCallback? nextTap,
    backKey = false,
  }) {
    if (Get.isDialogOpen != null && Get.isDialogOpen!) {
      Get.back();
    }
    Get.dialog(
        CommonDialog(
          title : title,
          content : content,
          backText : backText.isEmpty ? StringStyles.quit.tr : backText,
          nextText : nextText.isEmpty ? StringStyles.enter.tr : nextText,
          backVisible : backVisible,
          nextVisible : nextVisible,
          backTap : backTap,
          nextTap : nextTap,
        ),
        transitionDuration: const Duration(milliseconds: 500),
        barrierDismissible: backKey);
  }
}

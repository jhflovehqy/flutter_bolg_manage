import 'package:blog/base/get/get_extension.dart';
import 'package:blog/http/request_repository.dart';
import 'package:blog/res/button_style.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/formatter/customized_length_formatter.dart';
import 'package:blog/util/navigate_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:blog/widget/ripple_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dialog_base.dart';

/// @class : ShareArticleDialog
/// @date : 2021/9/13
/// @name : jhf
/// @description : 分享文章弹窗
class ShareArticleDialog extends StatelessWidget {
  ///分享的链接
  String url = 'https://www.baidu.com';

  ///分享的文章标题
  String title = '';

  ShareArticleDialog({Key? key, this.url = 'https://www.baidu.com'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
        horizontal: 50,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Box.vBox20,
              Text(
                StringStyles.shareArticleTitle.tr,
                style: Styles.style_black_16_bold500,
              ),
              Box.vBox20,
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    url,
                    style: Styles.style_FFAE2E_16,
                  )),
              Box.vBox20,
              Container(
                  height: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    autofocus: true,
                    maxLines: 1,
                    style: Styles.style_6A6969_14,
                    onChanged: (text) {
                      title = text;
                    },
                    inputFormatters: [
                      ///输入长度和格式限制
                      CustomizedLengthTextInputFormatter(50),
                    ],

                    ///样式
                    decoration: InputDecoration(
                        fillColor: Colors.white12,
                        filled: true,
                        hintText: StringStyles.shareArticleHint.tr,
                        hintStyle: Styles.style_B8C0D4_14,
                        border: _getEditBorder(false),
                        focusedBorder: _getEditBorder(true),
                        disabledBorder: _getEditBorder(false),
                        enabledBorder: _getEditBorder(false),
                        contentPadding:
                            const EdgeInsets.only(left: 10, right: 10)),
                  )),
              Box.vBox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        shareArticle();
                        Get.back();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 12),
                        decoration: DecorationStyle.customize(
                            ColorStyle.color_24CF5F, 20),
                        child: Text(
                          StringStyles.shareArticleEnter.tr,
                          style: Styles.style_white_14,
                        ),
                      )),
                  Box.hBox15,
                  GestureDetector(
                    onTap: () {
                      Navigate.launchInBrowser(url);
                      Get.back();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: DecorationStyle.customizeBorder(
                          color: ColorStyle.color_24CF5F),
                      child: Text(
                        StringStyles.shareBrowser.tr,
                        style: Styles.style_24CF5F_14,
                      ),
                    ),
                  )
                ],
              ),
              Box.vBox30,
            ]));
  }

  ///分享文章
  shareArticle() {
    if (title.isEmpty) {
      ToastUtils.show(StringStyles.shareArticleEdit.tr);
      return;
    }
    var request = Get.find<RequestRepository>();
    request.shareArticle(title, url, success: (data) {
      ToastUtils.show(StringStyles.shareArticleSuccess.tr);
    });
  }

  ///获取输入框的Border属性，可公用
  ///[isEdit]是否获取焦点
  OutlineInputBorder _getEditBorder(bool isEdit) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: isEdit ? ColorStyle.color_24CF5F : ColorStyle.colorShadow,
        width: 1,
      ),
    );
  }
}

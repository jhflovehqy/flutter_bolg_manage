import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/feedback_page/feedback_controller.dart';
import 'package:blog/ui/page/user_module/feedback_page/widget/feedback_photo_select_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : FeedbackPage
/// @date : 2021/08/25
/// @name : jhf
/// @description :问题反馈页面
class FeedbackPage extends GetCommonView<FeedbackController> {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///标题栏
            ToolBar(
              title: StringStyles.homeFeedback.tr,
            ),

            ///问题反馈标题
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                Container(
                  child:  Text(
                    StringStyles.feedbackTitleStar.tr,
                    style: Styles.style_1A2F51_14,
                  ),
                  margin: const EdgeInsets.only(top: 25, left: 25),
                ),

                ///问题反馈输入框
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    textAlign: TextAlign.left,
                    autofocus: false,
                    onChanged: (text) {
                      controller
                        ..issue = text
                        ..update();
                    },
                    maxLines: 6,
                    maxLength: 200,
                    style: Styles.style_1A2F51_14,
                    decoration: InputDecoration(
                      hintText: StringStyles.feedbackHint.tr,
                      hintStyle: Styles.style_B8C0D4_13,
                      border: _getEditBorder(),
                      focusedBorder: _getEditBorder(),
                      disabledBorder: _getEditBorder(),
                      enabledBorder: _getEditBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 14),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 15, left: 25, right: 25),
                ),

                ///上传截图(选题)
                Container(
                  child: Row(
                    children: [
                      Text(
                        StringStyles.feedbackUploadPhoto.tr,
                        style: Styles.style_1A2F51_14,
                      ),
                      Text(
                        StringStyles.feedbackOptional.tr,
                        style: Styles.style_B8C0D4_14,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 25),
                ),

                ///图片选择框
                Container(
                  child: const FeedbackPhotoSelectWidget(),
                  margin: const EdgeInsets.only(top: 15, right: 18, left: 18),
                ),

                ///联系方式
                Container(
                  child: Row(
                    children: [
                      Text(
                        StringStyles.feedbackContact.tr,
                        style: Styles.style_1A2F51_14,
                      ),
                      Text(
                        StringStyles.feedbackOptional.tr,
                        style: Styles.style_B8C0D4_14,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 30, left: 25),
                ),

                ///联系方式输入框
                Container(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    autofocus: false,
                    maxLines: 1,
                    style: Styles.style_1A2F51_14,
                    onChanged: (text) {
                      controller
                        ..contact = text
                        ..update();
                    },
                    decoration: InputDecoration(
                      hintText: StringStyles.feedbackConnectHint.tr,
                      hintStyle: Styles.style_B8C0D4_13,
                      border: _getEditBorder(),
                      focusedBorder: _getEditBorder(),
                      disabledBorder: _getEditBorder(),
                      enabledBorder: _getEditBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 11),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 15, left: 25, right: 25),
                ),

                ///联系QQ群
                Container(
                  child:  Text(
                    StringStyles.feedbackConnectQQ.tr,
                    style: Styles.style_1A2F51_14,
                  ),
                  margin: const EdgeInsets.only(top: 30, left: 25),
                ),

                Box.vBox50,

                GestureDetector(
                  onTap: ()=> controller.requestFeedback(context),
                  child:   Container(
                    padding: const EdgeInsets.symmetric(vertical: 13.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: ColorStyle.color_B8C0D4, width: 1.0),
                        borderRadius: BorderRadius.circular(30.0)),
                    child:  Text(
                      StringStyles.feedbackSubmit.tr,
                      style: Styles.style_1A2F51_14,
                    ),
                    margin: const EdgeInsets.only(left: 90, right: 110),
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }

  ///获取输入框的Border属性，可公用
  OutlineInputBorder _getEditBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
        color: ColorStyle.color_B8C0D4,
        width: 1.0,
      ),
    );
  }
}

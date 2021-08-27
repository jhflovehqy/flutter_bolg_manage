import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/shadow_style.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/webview_page/webview_controller.dart';
import 'package:blog/util/navigate_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
/// @class : WebViewBottomWidget
/// @date : 2021/08/25
/// @name : jhf
/// @description :WebView 底部菜单
class WebViewBottomWidget extends GetCommonView<WebController> {

  const WebViewBottomWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Box.hBox20,
          Expanded(
            child: GestureDetector(
              onTap: () => ToastUtils.show(StringStyles.webNotComment.tr),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  child:  Text(
                    StringStyles.webEditHint.tr,
                    style: Styles.style_B8C0D4_14,
                  ),
                  decoration: const BoxDecoration(
                    color: ColorStyle.colorShadow,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            )
          ),
          Box.hBox20,
          InkWell(
            onTap: ()=> controller.collectArticle(),
            child: Icon(
              controller.isCollect ?Icons.star : Icons.star_outline,
              color: Colors.amber,
              size: 24,
            ),
          ),
          Box.hBox20,
          const Icon(
            Icons.thumb_up_alt_outlined,
            color: ColorStyle.color_24CF5F,
            size: 24,
          ),
          Box.hBox20,
          InkWell(
            onTap: ()=> Navigate.launchInBrowser(controller.detail.link),
            child:  const Icon(
              Icons.public,
              color: Colors.blue,
              size: 24,
            ),
          ),

          Box.hBox20,
        ],
      ),
      decoration: ShadowStyle.white12Circle(radius: 5),
    );
  }
}

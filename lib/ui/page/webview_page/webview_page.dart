import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/ui/page/webview_page/webview_controller.dart';
import 'package:blog/ui/page/webview_page/widget/webview_bottom_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';

/// @class : WebViewPage
/// @date : 2021/08/24
/// @name : jhf
/// @description :WebView View层
class WebViewPage extends GetCommonView<WebController> {

  const WebViewPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          /// 拦截用户返回，返回时携带参数
          Get.back(result: controller.isCollect.value);
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Stack(
                children: [
                  ToolBar(
                    backColor: ColorStyle.color_474747,
                    backOnTap: () =>
                        Get.back(result: '${controller.isCollect}'),
                    title: controller.detail.title,
                  ),
                  Positioned(
                    right: 20,
                    bottom: 11,
                    width: 24,
                    height: 24,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        splashColor: ColorStyle.color_E2E3E8_66,
                        onTap: () {
                          Share.share(controller.detail.title + controller.detail.link);
                        },
                        child:  SvgPicture.asset(
                          R.assetsImagesShare,
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    WebView(
                      initialUrl: controller.detail.link,
                      javascriptMode: JavascriptMode.unrestricted,
                      onProgress: (pro) {
                        controller.progress.value = (pro / 100).toDouble();
                      },
                    ),
                    Obx(() => Visibility(
                          visible: controller.collectAtState.value,
                          child: Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Lottie.asset(R.assetsLottieCollect,
                                  animate: controller.collectAtState.value,
                              )),
                        )),
                    Obx(() => Visibility(
                          visible: controller.progress < 1,
                          child: LinearProgressIndicator(
                            minHeight: 2,
                            backgroundColor: ColorStyle.color_F9F9F9,
                            color: ColorStyle.color_24CF5F,
                            value: controller.progress.value,
                          ),
                        )),
                  ],
                ),
              ),
              Visibility(
                visible: controller.detail.id > 0,
                child: const WebViewBottomWidget(),
              ),
            ],
          ),
        ));
  }
}

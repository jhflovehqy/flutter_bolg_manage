import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/ui/page/splash_page/splash_controller.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

/// @class : SplashAnimWidget
/// @date : 2021/08/17
/// @name : jhf
/// @description :动画Widget
class SplashAnimWidget extends GetCommonView<SplashController> {
  const SplashAnimWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        onEnd: () {
          Get.offNamed(SpUtil.getUserInfo() == null
              ? Routes.loginPage
              : Routes.homePage);
        },
        opacity: controller.opacityLevel,
        duration: const Duration(milliseconds: 2000),
        child: Container(
          margin: const EdgeInsets.only(top: 120),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                R.assetsImagesApplication,
                fit: BoxFit.fitWidth,
                width: 110,
                height: 110,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child:  Text(
                  StringStyles.appName.tr,
                  style: Styles.style_black_36,
                ),
              ),
            ],
          ),
        ));
  }
}

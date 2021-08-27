import 'package:blog/res/r.dart';
import 'package:blog/ui/page/splash_page/widget/splash_anim_widget.dart';
import 'package:blog/util/screen_util.dart';
import 'package:flutter/material.dart';

/// @class : SplashPage
/// @date : 2021/08/15
/// @name : jhf
/// @description :启动页 View层
class SplashPage extends StatelessWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.removeSystemTransparent(context);
    ///预缓存背景图片
    precacheImage(const AssetImage(R.assetsImagesLoginBackground), context);
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashAnimWidget()
    );
  }



}
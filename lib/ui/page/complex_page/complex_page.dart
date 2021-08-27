import 'package:blog/base/get/get_save_state_view.dart';
import 'package:blog/res/r.dart';
import 'package:blog/ui/page/complex_page/complex_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

/// @class : ComplexPage
/// @date : 2021/08/23
/// @name : jhf
/// @description :综合页面 View层
class ComplexPage extends GetSaveView<ComplexController> {
  const ComplexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: kTextTabBarHeight),
      child: Stack(
        children: [
          Text("标题栏"),
          Positioned(
            right: 16,
            child: SvgPicture.asset(
              R.assetsImagesSearch,
              color: Colors.black87,
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}

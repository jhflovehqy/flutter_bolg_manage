import 'package:blog/base/get/get_save_state_view.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/ui/page/complex_module/square_page/widget/square_article_item.dart';
import 'package:blog/util/web_util.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:blog/widget/ripple_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'square_controller.dart';

/// @class : SquarePage
/// @date : 2021/9/9
/// @name : jhf
/// @description :广场 View层
class SquarePage extends GetSaveView<SquareController> {
  const SquarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: RefreshWidget<SquareController>(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: controller.projectData.length,
            itemBuilder: (BuildContext context, int index) {
              return Material(
                  color: Colors.transparent,
                  child: Ripple(
                      onTap: () => WebUtil.toWebPage(
                              controller.projectData[index], onResult: (value) {
                            controller.projectData[index].collect = value;
                          }),
                      child: SquareArticleItem(
                        item: controller.projectData[index],
                      )));
            },
          ),
        ),
      ),
    );
  }
}

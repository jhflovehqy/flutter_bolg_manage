import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/base/get/get_extension.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/collect_page/collect_controller.dart';
import 'package:blog/ui/page/user_module/collect_page/widget/collect_item_widget.dart';
import 'package:blog/ui/page/user_module/points_page/points_controller.dart';
import 'package:blog/ui/page/user_module/points_page/widget/points_item_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// @class : CollectPage
/// @date : 2021/08/27
/// @name : jhf
/// @description :我的收藏 View层
class CollectPage extends GetCommonView<CollectController> {

  const CollectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.collectTitle.tr,
            ),
            DividerStyle.divider1HalfPadding20,

            ///积分列表
            Expanded(
              child: RefreshWidget<CollectController>(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: controller.collectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CollectItemWidget(
                        collect: controller.collectList[index],
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

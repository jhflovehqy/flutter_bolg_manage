import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/points_page/points_controller.dart';
import 'package:blog/ui/page/user_module/points_page/widget/points_item_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

/// @class : PointsPage
/// @date : 2021/08/25
/// @name : jhf
/// @description :积分明细 View层
class PointsPage extends GetCommonView<PointsController> {
  const PointsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.pointsDetailTitle.tr,
            ),
            DividerStyle.divider1HalfPadding20,

            ///积分列表
            Expanded(
              child: RefreshWidget<PointsController>(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: controller.pointsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PointsItemWidget(
                    points: controller.pointsList[index],
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

import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/history_page/widget/history_item_widget.dart';
import 'package:blog/ui/page/user_module/ranking_page/ranking_controller.dart';
import 'package:blog/ui/page/user_module/ranking_page/widget/ranking_item_widget.dart';
import 'package:blog/ui/page/user_module/ranking_page/widget/ranking_title_widget.dart';
import 'package:blog/ui/page/user_module/share_page/share_controller.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/over_scroll_behavior.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : SharePage
/// @date : 2021/9/14
/// @name : jhf
/// @description :分享页 View层
class SharePage extends GetCommonView<ShareController> {
  const SharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.shareTitle.tr,
            ),
            DividerStyle.divider1Half,

            ///分享列表
            Expanded(
              child: RefreshWidget<ShareController>(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: controller.shareList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return HistoryItemWidget(
                        detail: controller.shareList[index],
                        onResult: (value)=> controller.shareList[index].collect = value,
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

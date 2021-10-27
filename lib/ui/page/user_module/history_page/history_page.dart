import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/history_page/history_controller.dart';
import 'package:blog/ui/page/user_module/history_page/widget/history_item_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : HistoryPage
/// @date : 2021/9/9
/// @name : jhf
/// @description :历史记录 View层
class HistoryPage extends GetCommonView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.historyTitle.tr,
            ),
            DividerStyle.divider1HalfPadding20,

            ///浏览历史
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: controller.historyList.length,
              itemBuilder: (BuildContext context, int index) {
                return HistoryItemWidget(
                  detail: controller.historyList[index],
                  onResult: (value) =>  controller.historyList[index].collect = value,
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}

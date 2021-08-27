import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/ui/page/user_module/ranking_page/ranking_controller.dart';
import 'package:blog/ui/page/user_module/ranking_page/widget/ranking_item_widget.dart';
import 'package:blog/ui/page/user_module/ranking_page/widget/ranking_title_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/over_scroll_behavior.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : RankingPage
/// @date : 2021/08/24
/// @name : jhf
/// @description :用户信息 View层
class RankingPage extends GetCommonView<RankingController> {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.color_FBE240,
      body: Container(
        child: Column(
          children: [
            ToolBar(
                backgroundColor: Colors.transparent,
                backColor: Colors.white,
                backOnTap: () => Get.back()),
            Image.asset(
              R.assetsIntegralRanking,
            ),
            Expanded(
                ///排行榜样式
                child: Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 50),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular((25))),
                    child: Column(
                      children: [
                        ///顶部背景标题
                        const RankingTitleWidget(),

                        ///列表
                        Expanded(
                            child: RefreshWidget<RankingController>(
                          enablePullDown: false,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: controller.rankingList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return RankingItemWidget(
                                ranking: controller.rankingList[index],
                              );
                            },
                          ),
                        ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}

import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/search_page/search_controller.dart';
import 'package:blog/ui/page/search_page/widget/search_item.dart';
import 'package:blog/util/keyboard_util.dart';
import 'package:blog/widget/ripple_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';

/// @class : SearchHistoryWidget
/// @date : 2021/9/7
/// @name : jhf
/// @description :搜索页面 搜索历史
class SearchHistoryWidget extends GetCommonView<SearchController> {
  const SearchHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
        visible: controller.history.isNotEmpty,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Box.hBox20,
                Text(
                  StringStyles.searchHistory.tr,
                  style: Styles.style_black_16_bold500,
                ),
                Expanded(child: Container()),
                Ripple(
                  onTap: () => controller.clearSearchHistory(),
                  circular: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      R.assetsImagesRubbish,
                      width: 24,
                    ),
                  ),
                ),
                Box.hBox20,
              ],
            ),
            Box.vBox5,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                children: [
                  for (String items in controller.history)
                    SearchHistoryItem(
                        name: items,
                        ///改变输入框内容、设置输入框文本、光标移动到尾部、开始搜索数据
                        onTap: () => controller.hotOrHistorySearch(items))
                ],
                crossAxisAlignment: WrapCrossAlignment.center,
              ),
            )
          ],
        )));
  }
}

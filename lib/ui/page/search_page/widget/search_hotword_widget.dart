import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/search_page/search_controller.dart';
import 'package:blog/ui/page/search_page/widget/search_hotword_item.dart';
import 'package:blog/util/keyboard_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

/// @class : SearchHotWordWidget
/// @date : 2021/9/6
/// @name : jhf
/// @description :搜索页面 搜索热词
class SearchHotWordWidget extends GetCommonView<MySearchController> {
  const SearchHotWordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Box.hBox20,
            Text(
              StringStyles.searchHotWord.tr,
              style: Styles.style_black_16_bold500,
            ),
            SvgPicture.asset(
              R.assetsImagesHotWord,
              width: 16,
            ),
            Box.hBox20,
            Expanded(child: Container()),
          ],
        ),
        Box.vBox5,
        Obx(() => Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: controller.hotWord.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 5 / 1),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => controller
                          .hotOrHistorySearch(controller.hotWord[index].name),
                      child: SearchHotWordItem(
                        item: controller.hotWord[index],
                        index: index + 1,
                      ),
                    );
                  }),
            )),
      ],
    );
  }
}

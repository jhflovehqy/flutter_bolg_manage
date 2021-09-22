import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/search_page/search_controller.dart';
import 'package:blog/ui/page/search_page/widget/search_history_widget.dart';
import 'package:blog/ui/page/search_page/widget/search_hotword_widget.dart';
import 'package:blog/ui/page/search_page/widget/search_result_widget.dart';
import 'package:blog/ui/page/search_page/widget/search_top_widget.dart';
import 'package:flutter/material.dart';

/// @class : SearchPage
/// @date : 2021/9/3
/// @name : jhf
/// @description :搜索页面 View层
class SearchPage extends GetCommonView<SearchController> {
  ///TextFieId控制器

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Box.vBox15,

            ///搜索框顶部Widget
            SearchTopWidget(
              onChanged: (text) {
                controller.changeText.value = text;
                if (text.isEmpty) {
                  controller.searchResult.value = [];
                }
              },
              onTap: () => controller.searchWord(),
              deleteTap: () {
                controller
                  ..changeText.value = ''
                  ..showResult.value = false
                  ..textController.text = ''
                  ..searchResult.value = [];
              },
              textController: controller.textController,
            ),
            Box.vBox15,

            Expanded(
              child: Stack(
                children: [
                  Column(
                    children: [
                      ///搜索历史
                      const SearchHistoryWidget(),
                      Box.vBox20,

                      ///搜索热词
                      const SearchHotWordWidget(),
                    ],
                  ),
                  const SearchResultWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

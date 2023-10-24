import 'dart:collection';

import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/ui/page/search_page/widget/search_result_item.dart';
import 'package:blog/util/web_util.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:blog/widget/ripple_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../search_controller.dart';

/// @class : SearchPage
/// @date : 2021/9/7
/// @name : jhf
/// @description :搜索页面 搜索结果
class SearchResultWidget extends GetCommonView<MySearchController> {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: controller.showResult.value,
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              child: RefreshWidget<MySearchController>(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: controller.searchResult.length,
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                      color: Colors.transparent,
                      child: Ripple(
                          onTap: () =>
                              WebUtil.toWebPage(controller.searchResult[index],
                                  onResult: (value) {
                                controller.searchResult[index].collect = value;
                              }),
                          child: SearchResultItem(
                            item: controller.searchResult[index],
                          )));
                },
              ))),
        ));
  }
}

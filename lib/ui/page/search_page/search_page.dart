import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/search_page/search_controller.dart';
import 'package:blog/ui/page/user_module/points_page/points_controller.dart';
import 'package:blog/ui/page/user_module/points_page/widget/points_item_widget.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// @class : SearchPage
/// @date : 2021/9/3
/// @name : jhf
/// @description :搜索页面 View层
class SearchPage extends GetCommonView<SearchController> {

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Text(''),
      ),
    );
  }
}

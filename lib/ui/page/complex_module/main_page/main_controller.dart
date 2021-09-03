import 'dart:async';

import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/banner_mode.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/res/r.dart';
import 'package:blog/util/ext/refresher_extension.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


/// @class : MainController
/// @date : 2021/09/02
/// @name : jhf
/// @description :首页 控制器层
class MainController extends BaseGetPageController {

  List<ProjectDetail> projectData = [];

  ///首页Banner轮播图
  List<Banners> banner = [];

  ///Banner轮播图控制器
  final PageController pageController = PageController(
    initialPage: 0, viewportFraction: 0.8,);

  ///当前轮播的索引
  int currentIndex = 1;

  @override
  void onInit() {
    super.onInit();
    getBanner();
  }

  ///请求积分明细
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    request.requestAskModule(page, success: (data, over) {
      RefreshExtension.onSuccess(controller, refresh, over);

      ///下拉刷新需要清除列表
      if (refresh != Refresh.down) {
        projectData.clear();
      }
      loadState.value = true;
      projectData.addAll(data);
      update();
    }, fail: (code, msg) {
      loadState.value = true;
      RefreshExtension.onError(controller, refresh);
    });
  }

  ///请求获取首页Banner图片
  void getBanner() {
    request.getBanner(success: (data) {
      ///添加自定义的积分排行榜图片
      banner.add(Banners(
        imagePath: R.assetsIntegralRanking,
        isAssets: true,));
      banner.addAll(data);
      update();
    });
  }


}

import 'dart:math';

import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/banner_mode.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/model/wechat_public_mode.dart';
import 'package:blog/res/r.dart';
import 'package:blog/util/ext/refresher_extension.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:get/get.dart';

/// @class : MainController
/// @date : 2021/09/02
/// @name : jhf
/// @description :首页 控制器层
class MainController extends BaseGetPageController {
  ///首页数据
  List<ProjectDetail> projectData = [];

  ///首页Banner轮播图
  List<Banners> banner = [];

  ///微信公众号列表
  List<WechatPublic> wechatPublic = [];

  ///当前显示的微信公众号列表
  List<WechatPublic> showWechatPublic = [];

  ///Banner轮播图控制器
  final PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  ///当前轮播的索引
  int currentIndex = 1;

  ///插入公众号的索引
  var insertIndex = -1;

  ///是否是第一次加载
  bool isFirst = true;

  ///是否显示换一批按钮
  RxBool showSwitch = false.obs;

  ///是否显示删除按钮
  RxBool showDelete = false.obs;

  @override
  void onInit() {
    super.onInit();
    getBanner();
  }

  ///请求首页项目数据
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    request.requestHomeArticle(page, success: (data, over) {
      RefreshExtension.onSuccess(controller, refresh, over);

      ///下拉刷新需要清除列表
      if (refresh != Refresh.down) {
        projectData.clear();
      }

      projectData.addAll(data);
      showSuccess(projectData);

      ///为了防止动画每次都加载，所以只需要在第一次出现时加载一次
      update();

      ///请求公众号数据
      if (projectData.isNotEmpty && wechatPublic.isEmpty) {
        getWechatPublic();
      }
    }, fail: (code, msg) {
      showError();
      RefreshExtension.onError(controller, refresh);
    });
  }

  ///请求获取首页Banner图片
  void getBanner() {
    request.getBanner(success: (data) {
      ///添加自定义的积分排行榜图片
      banner.add(Banners(
        imagePath: R.assetsIntegralRanking,
        isAssets: true,
      ));
      banner.addAll(data);

      ///预缓存banner图片
      data.forEach((element) {
        if (Get.context != null) {
          precacheImage(NetworkImage(element.imagePath), Get.context!);
        }
      });
      update();
    });
  }

  ///请求完首页数据之后，请求微信公众号接口
  ///随机取首页数据中间数值插入一列为公众号数据
  void getWechatPublic() {
    request.getWechatPublic(success: (data) {
      wechatPublic = data;

      ///获取当前微信公众号插入索引
      insertIndex = getInsertIndexRandom();

      ///获取当前显示的2个随机公众号数据
      showWechatPublic = getRandomPublicData(data);
      update();
    });
  }

  ///获取公众号数据插入的索引处
  int getInsertIndexRandom() {
    final _random = Random();
    var randomIndex = _random.nextInt(projectData.length - 1);
    if (randomIndex <= 3 && projectData.length > 4) {
      return getInsertIndexRandom();
    }
    return randomIndex;
  }

  ///换一批新的公众号
  void notifyRandomPublic() {
    if (showSwitch.value) {
      showWechatPublic = getRandomPublicData(wechatPublic);
      update();
    } else {
      showSwitch.value = true;
    }
  }

  ///点击背景隐藏按钮
  void notifyButtonState() {
    if (showSwitch.value) {
      showSwitch.value = false;
    }
    if (showDelete.value) {
      showDelete.value = false;
    }
  }

  ///获取随机的公众号数据
  getRandomPublicData(List<WechatPublic> data) {
    final _random = Random();
    var randomIndex = _random.nextInt(data.length - 2);
    return data.sublist(randomIndex, randomIndex + 2);
  }
}

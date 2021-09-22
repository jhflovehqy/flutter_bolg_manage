import 'package:blog/model/banner_mode.dart';
import 'package:blog/model/collect_model.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/model/web_model.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:get/get.dart';


/// @class : WebUtil
/// @date : 2021/9/14
/// @name : jhf
/// @description :Web工具类
class WebUtil {


  ///普通页面进入Web页面1
  static toWebPage(ProjectDetail detail) {
    Get.toNamed(Routes.webViewPage, arguments: WebEntity(
      title: detail.title,
      link: detail.link,
      id: detail.id,
      isCollect: detail.collect,
    ));
    ///存储浏览记录
    SpUtil.saveBrowseHistory(detail);
  }

  ///收藏页面进入Web页面2
  static toWebPageCollect(CollectDetail detail) {
    Get.toNamed(Routes.webViewPage, arguments: WebEntity(
      title: detail.title,
      link: detail.link,
      id: detail.id,
      isCollect: true,
    ));
  }

  ///普通页面进入Web页面2
  static toWebPageBanners(Banners detail) {
    Get.toNamed(Routes.webViewPage, arguments: WebEntity(
      title: detail.title,
      link: detail.url,
      id: 0,
      isCollect: false,
    ));
  }

}
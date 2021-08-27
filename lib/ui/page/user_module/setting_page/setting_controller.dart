import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/file/cache_util.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:get/get.dart';

/// @class : SettingController
/// @date : 2021/08/25
/// @name : jhf
/// @description :设置 控制器层
class SettingController extends BaseGetController {

  ///缓存大小
  var cache = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadCache();
  }

  ///加载缓存
  loadCache(){
    CacheUtil.loadCache().then((value) {
      cache.value = CacheUtil.byte2FitMemorySize(value);
    });
  }

  ///清除缓存
  clearCacheFile() {
    CacheUtil.clearCache().then((value) {
      loadCache();
      ToastUtils.show(value ? StringStyles.settingCacheSuccess.tr : StringStyles
          .settingCacheFail.tr);
    });
  }


  ///退出登录
  exitLoginState(){
    SpUtil.deleteUserInfo();
    request.exitLogin();
    Get.offAllNamed(Routes.loginPage);
  }


}

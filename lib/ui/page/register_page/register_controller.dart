import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/http/request.dart';
import 'package:blog/http/request_api.dart';
import 'package:blog/model/request_register.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/save/sp_key.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:get/get.dart';

/// @class : RegisterController
/// @date : 2021/08/15
/// @name : jhf
/// @description :启动页 控制器层
class RegisterController extends BaseGetController {
  ///账号
  String account = "";

  ///密码
  String password = "";

  ///重复密码
  String rePassword = "";

  ///是否勾选隐私权限复选框
  bool isCheckPrivacy = true;



  ///[text] 密码文字
  ///更新指定字段的widget
  updateCheck() {
    isCheckPrivacy = !isCheckPrivacy;
    update(["isCheckPrivacy"]);
  }

  ///当前按钮是否可点击
  bool changeShowButton(){
    return account.isNotEmpty &&
        password.isNotEmpty &&
        rePassword.isNotEmpty;
  }

  ///点击注册
  /// 注册成功跳转
  register() {
    if(account.isEmpty ||
        password.isEmpty ||
        rePassword.isEmpty){
      return;
    }
    ///账户名：>6位
    if (account.isEmpty || account.length < 6) {
      ToastUtils.show(account.isEmpty
          ? StringStyles.registerAccountEmpty.tr
          : StringStyles.registerAccountLength.tr);
      return;
    }
    ///密码：>6位
    if (password.isEmpty || password.length < 6) {
      ToastUtils.show(password.isEmpty
          ? StringStyles.registerPasswordEmpty.tr
          : StringStyles.registerPasswordLength.tr);
      return;
    }
    ///确认密码：>6位
    if (rePassword.isEmpty || rePassword.length < 6) {
      ToastUtils.show(rePassword.isEmpty
          ? StringStyles.registerRePasswordEmpty.tr
          : StringStyles.registerRePasswordLength.tr);
      return;
    }
    ///密码 == 确认密码
    if (password != rePassword) {
      ToastUtils.show(StringStyles.registerPasswordDiff.tr);
      return;
    }
    ///同意服务条款
    if (!isCheckPrivacy) {
      ToastUtils.show(StringStyles.registerNotServiceTerms.tr);
      return;
    }

    request.register(account, password, rePassword , success: (data){
        ToastUtils.show(StringStyles.registerSuccess.tr);
        Get.offAllNamed(Routes.homePage);
    });
  }
}

import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/toast_util.dart';
import 'package:get/get.dart';



/// @class : SplashController
/// @date : 2021/08/15
/// @name : jhf
/// @description :启动页 控制器层
class LoginController extends BaseGetController {


  ///账号
  String account = "";
  ///密码
  String password = "";



  ///当前按钮是否可点击
  bool changeShowButton(){
    return account.isNotEmpty &&
        password.isNotEmpty;
  }

  ///用户登录
  login() {
    if (account.isEmpty ||
        password.isEmpty) {
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


    request.login(account, password, success: (data) {
      ToastUtils.show(StringStyles.loginSuccess.tr);
      Get.offAllNamed(Routes.homePage);
    });
  }


}

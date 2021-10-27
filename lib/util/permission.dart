import 'package:permission_handler/permission_handler.dart';

/// @class : PermissionRequest
/// @date : 2021/10/27
/// @name : jhf
/// @description :权限申请；类
class PermissionRequest {


  static sendPermission(Function(bool) result) {
    Permission.camera.status.then((value) {
      if (value.isGranted) {
        result(true);
      } else {
        Permission.storage
            .request()
            .then((value){
          result(value.isGranted);
        });
      }
    });
  }
}
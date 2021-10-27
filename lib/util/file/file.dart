

import 'package:blog/res/strings.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:get/get.dart';

/// @class : FileUtils
/// @date : 2021/10/27
/// @name : jhf
/// @description :文件管理类
class FileUtils{


  ///保存assets图片到本地
  ///[assets] assets路径
  ///[target] 目标路径
  static saveAssetsGallery({String assets = '', String target = ''}) async {
    ByteData bytes = await rootBundle.load(assets);
    final result = await ImageGallerySaver.saveImage(bytes.buffer.asUint8List());
    ToastUtils.show(StringStyles.saveSuccess.tr);
  }




}
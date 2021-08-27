import 'package:blog/base/get/get_extension.dart';
import 'package:blog/res/button_style.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/navigate_util.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dialog_base.dart';

/// @class : ShareDialog
/// @date : 2021/08/27
/// @name : jhf
/// @description : 分享弹窗
class ShareDialog extends StatelessWidget {
  String url = 'https://www.baidu.com';

  ShareDialog({Key? key, this.url = 'https://www.baidu.com'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Box.vBox30,
        Text(
          StringStyles.shareApplication.tr,
          style: Styles.style_black_16,
        ),
        Box.vBox5,
        Text(
          StringStyles.shareHint.tr,
          style: Styles.style_B8C0D4_14,
        ),
        Box.vBox10,
        Image.asset(
          R.assetsShareQRCode,
          width: 120,
          height: 120,
        ),
        Box.vBox20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///浏览器打开
            _buildShareIcon(ColorStyle.color_24CF5F , Icons.public, () => Navigate.launchInBrowser(url)),

            ///保存在本地
            _buildShareIcon(ColorStyle.color_FE8C28 , Icons.download, () {
              ToastUtils.show(StringStyles.saveSuccess.tr);
            })
          ],
        ),
        Box.vBox5,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///在浏览器打开
            Text(
              StringStyles.shareBrowser.tr,
              style: Styles.style_B8C0D4_13,
            ),

            ///保存在本地
            Text(
              StringStyles.shareSaveLocal.tr,
              style: Styles.style_B8C0D4_13,
            ),
          ],
        ),
        Box.vBox30,
        DividerStyle.divider1Half,
        SizedBox(
          width: double.infinity,
          height: 60,
          child: TextButton(
            style: ButtonStyles.getNoShapeStyle(),
            onPressed: () {
              Get.dismiss();
            },
            child: Text(
              StringStyles.quit.tr,
              style: Styles.style_black_16,
            ),
          ),
        )
      ],
    ));
  }

  Widget _buildShareIcon(Color color , IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        child:  Icon(
          icon,
          color: color,
          size: 30,
        ),
        decoration: const BoxDecoration(
          color: ColorStyle.colorShadow,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }
}

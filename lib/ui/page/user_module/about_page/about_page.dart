import 'package:blog/app/package_info.dart';
import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/user_module/about_page/about_controller.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : AboutPage
/// @date : 2021/08/25
/// @name : jhf
/// @description :关于我们 View层
class AboutPage extends GetCommonView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.aboutTitle.tr,
            ),
            Box.vBox30,
            Image.asset(
              R.assetsImagesApplication,
              width: 120,
            ),
            Box.vBox12,
            Text(
              StringStyles.appName.tr,
              style: Styles.style_black_30,
            ),
            Box.vBox5,
             Text(
              '${StringStyles.aboutVersion.tr}${PackageInfo.versionName}',
              style: Styles.style_black_12,
            ),
            Box.vBox5,
            Text(
              '${StringStyles.aboutBuild.tr}${PackageInfo.versionCode}',
              style: Styles.style_black_12,
            ),
            Box.vBox30,

            ListTile(
              title:  Text(StringStyles.aboutGithub.tr),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (){

              },
            ),
            DividerStyle.divider1HalfPadding20,

            ListTile(
              title:  Text(StringStyles.aboutCSDN.tr),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (){

              },
            ),
            DividerStyle.divider1HalfPadding20,

            ListTile(
              title:  Text(StringStyles.aboutSupport.tr),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: (){

              },
            ),
            DividerStyle.divider1HalfPadding20,

            const Expanded(
              child: Text(''),
            ),

             Text(
              StringStyles.aboutCopyright.tr,
              textAlign: TextAlign.center,
            ),
            Box.vBox12,
          ],
        ),
      ),
    );
  }
}

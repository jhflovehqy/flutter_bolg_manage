import 'package:blog/res/shadow_style.dart';
import 'package:blog/ui/dialog/dialog_share_article.dart';
import 'package:blog/ui/page/complex_module/complex_page/complex_page.dart';
import 'package:blog/ui/page/my_page/my_controller.dart';
import 'package:blog/ui/page/my_page/my_page.dart';
import 'package:blog/ui/page/project_page/project_page.dart';
import 'package:flutter/material.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/ui/page/home_page/widget/home_tab_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// @class : HomePage
/// @date : 2021/08/19
/// @name : jhf
/// @description :主页 View层
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomeTabOptionsState();
}

class HomeTabOptionsState extends State<HomePage>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  ///控制器
  TabController? tabController;

  ///监听应用从后台切换到前台时，读取粘贴板中的数据，验证URL，已保存分享
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      var clipboardData = Clipboard.getData(Clipboard.kTextPlain);
      clipboardData.then((value) {
        debugPrint("clipboardData=> ${value?.text}");
        if (value != null &&
            value.text != null &&
            value.text!.isNotEmpty &&
            (value.text!.startsWith("https://") ||
                value.text!.startsWith("http://"))) {
          Get.dialog(ShareArticleDialog(url: value.text!));
        }
      });
    }
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    //监听应用状态会回调 didChangeAppLifecycleState  方法
    WidgetsBinding.instance?.addObserver(this);

    ///监听TabBar切换事件
    tabController?.addListener(() {
      var index = tabController?.index;

      ///修复执行2次的BUG,增加条件
      if (tabController?.index == tabController?.animation?.value) {
        if (index == tabController!.length - 1) {
          Get.find<MyController>()
            ..notifyUserInfo()
            ..notifyBrowseHistory()
            ..notifyShareArticle();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
    //移除 监听应用状态会回调 didChangeAppLifecycleState  方法
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.color_F8F9FC,
      body: TabBarView(
        controller: tabController,
        children: const [ComplexPage(), ProjectPage(), MyPage()],
      ),
      bottomNavigationBar: Container(
        height: 65,
        decoration: ShadowStyle.white12TopSpread4Blur10(radius: 0),
        child: TabBar(
          indicator: const BoxDecoration(),
          labelColor: ColorStyle.color_24CF5F,
          unselectedLabelColor: ColorStyle.color_B8C0D4,
          controller: tabController,
          tabs: [
            TabTitleIcon(
              title: StringStyles.homeComplex.tr,
              icon: Icons.turned_in,
            ),
            TabTitleIcon(
              title: StringStyles.homeProject.tr,
              icon: Icons.send,
            ),
            TabTitleIcon(
              title: StringStyles.homeMy.tr,
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}

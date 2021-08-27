import 'package:blog/res/shadow_style.dart';
import 'package:blog/ui/page/complex_page/complex_page.dart';
import 'package:blog/ui/page/my_page/my_page.dart';
import 'package:blog/ui/page/project_page/project_page.dart';
import 'package:flutter/material.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/ui/page/home_page/widget/home_tab_title.dart';
import 'package:flutter/cupertino.dart';
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
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.color_F8F9FC,
      body: TabBarView(
        controller: tabController,
        children: const[
          ComplexPage(),
          ProjectPage(),
          MyPage()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: ShadowStyle.white12TopSpread4Blur10(radius :0 ),
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

import 'package:blog/base/get/get_save_state_view.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/ui/page/complex_module/main_page/widget/banner_widget.dart';
import 'package:blog/ui/page/my_page/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

/// @class : MainPage
/// @date : 2021/08/23
/// @name : jhf
/// @description :首页 View层
class MainPage extends GetSaveView<MainController> {


  const MainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          top: true,
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 140,
             child: BannerWidget(
               controller.banner,
               height: 140,
               onTap: (index) {
                 if(index == 0){
                   Get.toNamed(Routes.rankingPage);
                 }
               },
             ),
          )),
    );
  }
  //
  // child: PageView.builder(
  // itemCount: controller.banner.length ,
  // controller: controller.pageController,
  // scrollDirection: Axis.horizontal,
  // onPageChanged: (index) {
  // controller.currentIndex = index;
  // },
  // physics: const PageScrollPhysics(parent: BouncingScrollPhysics()),
  // itemBuilder: (BuildContext context, int index) {
  // return Container(
  // margin: const EdgeInsets.symmetric(horizontal: 10),
  // child: ClipRRect(
  // borderRadius: BorderRadius.circular(20),
  // child: Image.network(
  // controller
  //     .banner[index % controller.banner.length].imagePath,
  // fit: BoxFit.fill,
  // ),
  // ),
  // );
  // },
  // ),

}

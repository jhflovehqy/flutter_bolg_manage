import 'package:blog/model/project_model.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/style.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/ui/page/my_page/widget/head_circle_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



/// @class : ProjectListItem
/// @date : 2021/08/23
/// @name : jhf
/// @description :项目列表item widget
class AskListItem extends StatelessWidget {
  ProjectDetail detail;

  AskListItem(
      this.detail, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.webViewPage, arguments: detail);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(width: 0.5, color: ColorStyle.color_EFF1F8))),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Styles.style_black_16_bold,
                  ),
                  Box.vBox10,

                  Row(
                    children: [
                       HeadCircleWidget(
                        width: 22,
                        height: 22,
                      ),
                      Box.hBox5,
                      Text(
                        detail.shareUser.isEmpty ? detail.author : detail.shareUser,
                        style: Styles.style_B8C0D4_13,
                      ),
                      Box.hBox15,
                      Text(
                        detail.niceDate,
                        style: Styles.style_B8C0D4_13,
                      ),

                    ],
                  )
                ],
              ),
            ),
            Box.hBox5,
          ],
        ),
      ),
    );
  }
}

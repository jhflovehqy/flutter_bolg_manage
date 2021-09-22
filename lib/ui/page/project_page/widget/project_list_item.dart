import 'package:blog/model/project_model.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/style.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/web_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



/// @class : ProjectListItem
/// @date : 2021/08/23
/// @name : jhf
/// @description :项目列表item widget
class ProjectListItem extends StatelessWidget {
  ProjectDetail detail;

  ProjectListItem(
    this.detail, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>WebUtil.toWebPage(detail),
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
                  Text(
                    detail.desc,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Styles.style_6A6969_14,
                  )
                ],
              ),
            ),
            Box.hBox5,

            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                detail.envelopePic,
                fit: BoxFit.fill,
                width: 72,
                height: 128,
              ),
            )
          ],
        ),
      ),
    );
  }
}

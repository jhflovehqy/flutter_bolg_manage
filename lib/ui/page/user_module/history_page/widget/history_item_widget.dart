import 'package:blog/model/project_model.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/style.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/util/web_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : HistoryItemWidget
/// @date : 2021/9/9
/// @name : jhf
/// @description :浏览历史 item
class HistoryItemWidget extends StatelessWidget {
  ///排名信息
  ProjectDetail detail;

  HistoryItemWidget({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => WebUtil.toWebPage(detail),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(width: 0.5, color: ColorStyle.color_EFF1F8))),
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
                  Visibility(
                    visible: detail.desc.isNotEmpty,
                    child: Text(
                      detail.desc,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.style_9F9EA6_14,
                    ),
                  ),
                  Box.vBox5,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        detail.superChapterName,
                        style: Styles.style_FE8C28_11,
                      ),
                      Box.hBox10,
                      const Text(
                        '|',
                        style: Styles.style_9F9EA6_11,
                      ),
                      Box.hBox10,
                      Text(
                        detail.shareUser.isEmpty
                            ? detail.author
                            : detail.shareUser,
                        style: Styles.style_9F9EA6_11,
                      ),
                      Box.hBox10,
                      Text(detail.niceDate, style: Styles.style_9F9EA6_11),
                    ],
                  ),
                  Box.vBox3,
                ],
              ),
            ),
            Box.hBox5,
            Visibility(
              visible: detail.envelopePic.isNotEmpty,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  detail.envelopePic,
                  fit: BoxFit.cover,
                  width: 72,
                  height: 72,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

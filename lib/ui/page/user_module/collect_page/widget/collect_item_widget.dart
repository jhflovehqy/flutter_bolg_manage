import 'package:blog/res/colors.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/web_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blog/model/collect_model.dart';
import 'package:flutter_html/flutter_html.dart';

/// @class : PointsItemWidget
/// @date : 2021/08/25
/// @name : jhf
/// @description :ListView item
class CollectItemWidget extends StatelessWidget {
  ///收藏信息
  CollectDetail collect;

  GestureTapCallback? result;

  CollectItemWidget({Key? key, required this.collect, this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => WebUtil.toWebPageCollect(collect)?.then((value) {
        ///参数类型正确并且取消收藏了
        if (value is bool && !value && result != null) {
          result!();
        }
      }),
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
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 5),
                        decoration: const BoxDecoration(
                          color: ColorStyle.color_FE8C28,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Text(
                          collect.chapterName,
                          style: Styles.style_white_12,
                        ),
                      ),
                      Box.hBox5,
                      Expanded(
                        child: Text(
                          collect.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Styles.style_black_16_bold,
                        ),
                      )
                    ],
                  ),
                  Box.vBox10,
                  Visibility(
                    visible: collect.desc.isNotEmpty,
                      child: Html(
                    data: collect.desc,
                    // overflow: TextOverflow.ellipsis,
                    // maxLines: 2,
                    // style: Styles.style_6A6969_14,
                  )),
                  Box.vBox10,
                  Row(
                    children: [
                      Text(
                        collect.author,
                        style: Styles.style_B8C0D4_14,
                      ),
                      Box.hBox10,
                      Expanded(
                        child: Text(
                          collect.niceDate,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Styles.style_FFAE2E_14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Box.hBox5,
            Visibility(
              visible: collect.envelopePic.isNotEmpty,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  collect.envelopePic,
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

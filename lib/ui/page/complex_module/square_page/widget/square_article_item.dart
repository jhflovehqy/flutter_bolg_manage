import 'package:blog/model/project_model.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/html_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

/// @class : SquareArticleItem
/// @date : 2021/9/9
/// @name : jhf
/// @description :广场文章 Item
class SquareArticleItem extends StatelessWidget {
  ///列表数据
  ProjectDetail item;

  SquareArticleItem({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Box.vBox10,
          Text(
            item.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.style_black_16_bold,
          ),

          Box.vBox10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Visibility(
                  visible: item.fresh,
                  child: Container(
                    margin: const EdgeInsets.only(top: 4 , right: 12),
                    padding: const EdgeInsets.symmetric(horizontal: 3 , vertical: 2),
                    decoration: DecorationStyle.customize(Colors.red, 3),
                    child: const Text(
                      '新',
                      style: Styles.style_white_10,
                    ),
                  )),
              Text(
                item.shareUser.isEmpty ? item.author : item.shareUser,
                style: Styles.style_9F9EA6_11,
              ),
              Box.hBox10,
              Text(item.niceDate, style: Styles.style_9F9EA6_11),
            ],
          ),
          Box.vBox10,
          DividerStyle.divider1Half
        ],
      ),
    );
  }
}

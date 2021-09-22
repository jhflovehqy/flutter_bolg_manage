import 'package:blog/model/hotword_mode.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// @class : SearchHotWordItem
/// @date : 2021/9/8
/// @name : jhf
/// @description :搜索页面 热搜榜列表Item
class SearchHotWordItem extends StatelessWidget {
  ///列表数据
  HotWord item;

  ///索引
  int index;

  SearchHotWordItem({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: DecorationStyle.customize(getBgColor(), 2),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
              child: Text(
                '$index',
                style: index >3 ? Styles.style_black_12 :Styles.style_white_12,
              )),
        ),
        Box.hBox5,
        Text(
          item.name,
          overflow: TextOverflow.ellipsis,
          style: Styles.style_black_14,
        ),
        Box.hBox3,
        Visibility(
          visible: index <= 3,
          child: SvgPicture.asset(
            R.assetsImagesHotWordItem,
            width: 15,
          ),
        )
      ],
    );
  }

  ///获取热搜榜中的背景
  Color getBgColor() {
    switch (index) {
      case 1:return Colors.red;
      case 2:return ColorStyle.color_FE8C28;
      case 3:return ColorStyle.color_FFAE2E;
      default : return ColorStyle.colorShadow;
    }
  }
}

import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/date_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blog/model/points_detail.dart';
import 'package:flutter_svg/svg.dart';

/// @class : PointsItemWidget
/// @date : 2021/08/25
/// @name : jhf
/// @description :ListView item
class PointsItemWidget extends StatelessWidget {


  ///排名信息
  Points points;

  PointsItemWidget({Key? key, required this.points}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: const BoxDecoration(
            border:  Border(bottom: BorderSide(width: 0.5, color: ColorStyle.colorShadow))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Box.hBox15,
            Expanded(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Box.hBox15,
                 Text(
                   points.reason,
                   style: Styles.style_black_16,
                 ),
                 Box.vBox3,
                 Text(
                   DateUtil.milliseconds2Date(points.date),
                   style: Styles.style_B8C0D4_13,
                 ),
               ],
             ),
           ),


            Text(
              '+${points.coinCount}',
              style: Styles.style_FE8C28_24_bold,
            ),
            Box.hBox5,
            SvgPicture.asset(
              R.assetsImagesPoints,
              width: 22,
            ),
            Box.hBox15,
          ]
        )
    );
  }
}


import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// @class : RankingTitleWidget
/// @date : 2021/08/24
/// @name : jhf
/// @description :顶部列表标题
class RankingTitleWidget extends StatelessWidget{

  const RankingTitleWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
            color: ColorStyle.color_FFAE2E,
            borderRadius: BorderRadius.circular((25))),
      padding: const EdgeInsets.all(2.5),
      child: Container(
        height:36 ,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.5),
            color: ColorStyle.color_FE8C28,
            borderRadius: BorderRadius.circular((25))),
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    StringStyles.userRankingNumber.tr,
                    style: Styles.style_white_16_bold,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    StringStyles.userNickname.tr,
                    style: Styles.style_white_16_bold,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    StringStyles.userRankingCoin.tr,
                    style: Styles.style_white_16_bold,
                  ),
                ))
          ],
        )
      ),
    );
  }

}
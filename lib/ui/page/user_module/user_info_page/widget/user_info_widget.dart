import 'package:blog/res/colors.dart';
import 'package:blog/res/shadow_style.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @class : UserInfoWidget
/// @date : 2021/08/25
/// @name : jhf
/// @description :用户信息公共栏
class UserInfoWidget extends StatelessWidget {

  String keys = "";
  String value = "";


   UserInfoWidget({
    Key? key ,
    this.keys = "",
    this.value = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16 , horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keys ,
            style: Styles.style_black_15,
          ) ,
          Text(
            value,
            style: Styles.style_black_15,
          ) ,

        ],
      ),
    );
  }
}

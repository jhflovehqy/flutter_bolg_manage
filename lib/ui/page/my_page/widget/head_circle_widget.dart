
import 'package:blog/res/r.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @class : HeadCircleWidget
/// @date : 2021/08/23
/// @name : jhf
/// @description :圆角头像处理框
class HeadCircleWidget extends StatelessWidget{

  double width = 60;
  double height = 60;

  IconData? icon;

  HeadCircleWidget({
    Key? key ,
    this.width = 60 ,
    this.height = 60,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child:Container(
        width: width,
        height: height,
        color: Colors.white,
        child:  SvgPicture.asset(
          R.assetsImagesDefaultHeader,
        ) ,
      ) ,
    );
  }


}
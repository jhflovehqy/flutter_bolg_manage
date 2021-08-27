import 'package:blog/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @class : ShadowStyle
/// @date : 2021/08/23
/// @name : jhf
/// @description :阴影样式
class ShadowStyle{


  ///背景:透明
  ///阴影:黑色
  ///圆角:40
  static black12Circle40(){
    return BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          const BoxShadow(
              offset: Offset(2, 1),
              color: Colors.black12,
              blurRadius: 12
          )
        ]
    );
  }


  ///背景:白色
  ///阴影:黑色
  ///圆角:[radius] default 10
  static white12Circle({double radius = 10}){
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
           BoxShadow(
              offset: const Offset(2, 1),
              color: ColorStyle.colorShadow,
              blurRadius: radius
          )
        ]
    );
  }

}
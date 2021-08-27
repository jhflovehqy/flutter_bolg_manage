import 'package:blog/res/colors.dart';
import 'package:flutter/material.dart';



/// @class : ButtonStyles
/// @date : 2021/08/17
/// @name : jhf
/// @description :ButtonStyles样式
class ButtonStyles{

  /// Button公共样式，默认点击效果
  /// [ButtonStyle]
  static ButtonStyle getButtonStyle(){
    return ButtonStyle(
      overlayColor: MaterialStateProperty.all(ColorStyle.color_E2E3E8_33),
      animationDuration:const Duration(milliseconds: 200),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      shape: MaterialStateProperty.all(const StadiumBorder()),
    );
  }

  /// Button公共样式，无点击效果
  /// [ButtonStyle]
  static ButtonStyle getTransparentStyle(){
    return ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    );
  }


  /// Button公共样式，无圆角
  /// [ButtonStyle]
  static ButtonStyle getNoShapeStyle(){
    return ButtonStyle(
      shadowColor: MaterialStateProperty.all( ColorStyle.colorShadow),
      animationDuration:const Duration(milliseconds: 200),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
    );
  }
}
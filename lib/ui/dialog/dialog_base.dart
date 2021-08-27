import 'package:blog/widget/over_scroll_behavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// @class : BaseDialog
/// @date : 2021/08/27
/// @name : jhf
/// @description : 弹窗基类
///
class BaseDialog extends StatelessWidget {


  ///child
  Widget child;
  ///圆角
  double shape;


   BaseDialog({
    Key? key,
    this.shape = 10,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Material(
        ///透明样式
        type: MaterialType.transparency,
        ///dialog居中
        child: Center(

            ///取消ListView滑动阴影
            child: ScrollConfiguration(
                behavior: OverScrollBehavior(),

                ///ListView 的shrinkWrap属性可适应高度（有多少占多少）
                child: ListView(shrinkWrap: true, children: [
                  ///背景及内容、边距、圆角等，必须包裹在ListView中
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        decoration:  ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(shape),
                            ),
                          ),
                        ),
                        child: child,
                      ))
                ]))));
  }
}

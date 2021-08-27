import 'package:blog/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @page : ToolBar
/// @name : jhf
/// @description :公共标题栏
class ToolBar extends StatefulWidget {
  ///标题文字
  String title;

  ///右侧文字
  String endText;

  ///是否显示右侧
  bool isShowEnd = false;
  ///背景颜色
  Color backgroundColor = Colors.white;
  ///背景颜色
  Color backColor = ColorStyle.color_B8C0D4;


  VoidCallback? backOnTap;

  ToolBar({
    Key? key,
    this.title = "",
    this.endText = "",
    this.isShowEnd = false,
    this.backgroundColor = Colors.white,
    this.backOnTap,
    this.backColor = ColorStyle.color_B8C0D4
  }) : super(key: key);

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor,
      child: SafeArea(
        top: true,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child:  InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                onTap: widget.backOnTap ?? ()=> Get.back(),
                splashColor: ColorStyle.color_E2E3E8_66,
                highlightColor: ColorStyle.color_E2E3E8_66,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child:  Icon(
                    Icons.arrow_back,
                    color: widget.backColor,
                  ),
                ),
              ),
              margin: const EdgeInsets.only(top: 10, bottom: 6, left: 15),
            ),

            Container(
              width: 150,
              alignment: Alignment.center,
              child: Text(
                widget.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style:
                const TextStyle(color: Colors.black87 ,  fontSize: 16),
              ),
              margin: const EdgeInsets.only(top: 5, right: 12),
            ),
            Container(
              child: Text(
                widget.endText,
                style:
                const TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 13),
              ),
              padding: const EdgeInsets.all(15),
            ),
          ],
        ),
      )
    );
  }
}

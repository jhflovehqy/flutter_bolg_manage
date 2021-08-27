import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @class : TitleContentWidget
/// @date : 2021/08/20
/// @name : jhf
/// @description : 顶部明细，底部des
class TitleContentWidget extends StatelessWidget {

  ///标题
  String title = "";
  ///内容
  String content = "";

  GestureTapCallback? onTap;

  TitleContentWidget({Key? key,
    this.title = "",
    this.content = "",
    this.onTap
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: onTap,
        child:  Column(
          children: [
            Text(
              content,
              style: Styles.style_black_18_bold,
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                title,
                style: Styles.style_6A6969_14,
              ),
            )
          ],
        ),
      ),
    );
  }
}

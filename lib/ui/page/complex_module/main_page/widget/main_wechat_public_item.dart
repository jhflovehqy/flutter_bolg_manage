
import 'package:blog/model/wechat_public_mode.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/shadow_style.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/my_page/widget/head_circle_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



/// @class : WechatPublicItem
/// @date : 2021/09/08
/// @name : jhf
/// @description :首页 微信公众号Item
class WechatPublicItem extends StatelessWidget{

  WechatPublic item;


   WechatPublicItem({
    Key? key ,
    required this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        decoration: ShadowStyle.white12Circle(radius: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: R.wechatPublic.containsKey(item.id) ?
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:Container(
                  width: 64,
                  height: 64,
                  color: Colors.white,
                  child:  Image.asset(
                      R.wechatPublic[item.id] ?? ""
                  ) ,
                ) ,
              ) :HeadCircleWidget(
                width: 64,
                height: 64,
              ),
              decoration: ShadowStyle.black12Circle40(),
            ),
            Box.vBox15,
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  R.assetsImagesWechat,
                  width: 20,
                ),
                Box.hBox3,
                Text(
                  item.name,
                  style: Styles.style_black_14,
                ),
              ],
            )
          ],
        ));
  }

}
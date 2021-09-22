import 'package:blog/model/wechat_public_mode.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/ui/page/complex_module/main_page/main_controller.dart';
import 'package:blog/ui/page/complex_module/main_page/widget/main_wechat_public_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'main_wechat_public_widget_end.dart';

/// @class : WechatPublicWidget
/// @date : 2021/09/08
/// @name : jhf
/// @description :首页 微信公众号Widget
class WechatPublicWidget extends StatefulWidget {
  ///微信公众号数据
  List<WechatPublic> wechatPublic = [];

  ///是否第一次加载
  bool isFirst;

  ///点击换一批
  final GestureTapCallback? onChange;

  ///点击背景触发
  final GestureTapCallback? onTap;

  ///是否显示换一批按钮
  bool showSwitch = false;

  ///是否显示不感兴趣按钮
  bool showDelete = false;

  WechatPublicWidget(
      {Key? key,
      required this.wechatPublic,
      required this.isFirst,
      this.onChange,
      this.onTap,
      this.showSwitch = false,
      this.showDelete = false})
      : super(key: key);

  @override
  State<WechatPublicWidget> createState() => _WechatPublicWidgetState();
}

class _WechatPublicWidgetState extends State<WechatPublicWidget>
    with TickerProviderStateMixin {
  AnimationController? sizeController;
  Animation<double>? sizeAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation(widget.isFirst);
  }

  ///初始化动画控制器
  initAnimation(bool isFirst, {int milliseconds = 1500}) {
    sizeController = AnimationController(
        vsync: this, duration: Duration(milliseconds: milliseconds));
    sizeAnimation = Tween(begin: isFirst ? 0.0 : 1.0, end: isFirst ? 1.0 : 0.0)
        .animate(
            CurvedAnimation(parent: sizeController!, curve: Curves.easeOut));
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isFirst) {
      sizeController?.forward();
      Get.find<MainController>().isFirst = false;
    }
    return GestureDetector(
      onTap: widget.onTap,
      child: SizeTransition(
        axis: Axis.vertical,
        sizeFactor: sizeAnimation!,
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: DecorationStyle.colorShadowBorderStand(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box.vBox10,
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(StringStyles.tabWechatPublic.tr,
                          style: Styles.style_B8C0D4_14),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.wechatPublic.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return WechatPublicItem(
                              item: widget.wechatPublic[index]);
                        })
                  ],
                )),
            Positioned(
              child: Column(
                children: [
                  WechatPublicEndWidget(
                    icon: Icons.autorenew,
                    text: StringStyles.tabWechatSwitch.tr,
                    onTap: widget.onChange,
                    show: widget.showSwitch,
                  ),
                  Box.vBox20,
                  WechatPublicEndWidget(
                    icon: Icons.clear,
                    text: StringStyles.tabWechatDelete.tr,
                    show: widget.showDelete,
                    onTap: () {
                      if (widget.showDelete) {
                        ///开始执行隐藏动画
                        initAnimation(false, milliseconds: 1000);
                        sizeController?.forward();
                        Get.find<MainController>().update();
                        ///动画监听
                        sizeAnimation?.addStatusListener((state) {
                          if (state == AnimationStatus.completed) {
                            ///动画执行完成之后将微信公众号从中剔除
                            Get.find<MainController>()
                              ..insertIndex = -1
                              ..update();
                          }
                        });
                      } else {
                        Get.find<MainController>().showDelete.value = true;
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    sizeController?.dispose();
    super.dispose();
  }
}

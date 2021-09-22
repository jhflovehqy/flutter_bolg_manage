import 'package:blog/res/shadow_style.dart';
import 'package:blog/res/style.dart';
import 'package:flutter/cupertino.dart';

/// @class : WechatPublicEndWidget
/// @date : 2021/09/08
/// @name : jhf
/// @description :首页 微信公众号右侧侧滑按钮
class WechatPublicEndWidget extends StatefulWidget {
  ///图标
  IconData? icon;

  ///右侧文字
  String text = '';

  ///点击事件
  final GestureTapCallback? onTap;

  ///是否显示按钮数据
  bool show = false;

  WechatPublicEndWidget(
      {Key? key, this.icon, this.text = '', this.show = false, this.onTap})
      : super(key: key);

  @override
  State<WechatPublicEndWidget> createState() => _WechatPublicEndWidgetState();
}

class _WechatPublicEndWidgetState extends State<WechatPublicEndWidget>
    with TickerProviderStateMixin {
  AnimationController? transferController;
  Animation<Offset>? transferAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation(widget.show);
  }

  ///初始化动画控制器
  initAnimation(bool isFirst, {int milliseconds = 300}) {
    transferController = AnimationController(
        vsync: this, duration: Duration(milliseconds: milliseconds));
    transferAnimation = Tween(
            begin:  Offset.zero,
            end:  const Offset(0.7, 0))
        .animate(transferController!);
  }

  @override
  Widget build(BuildContext context) {
    if(widget.show){
      transferController?.reverse();
    }else{
      transferController?.forward();
    }
    return  SlideTransition(
        position: transferAnimation!,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: widget.onTap,
          child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: ShadowStyle.white12CircleBorder(
              const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              radius: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 14,
              ),
              Box.hBox5,
              Text(
                widget.text,
                style: Styles.style_9F9EA6_11,
              ),
              Box.hBox10
            ],
          ),
        ),
      ),
    );
  }
}

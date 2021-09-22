import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/formatter/customized_length_formatter.dart';
import 'package:blog/widget/ripple_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import '../search_controller.dart';

/// @class : SearchTopWidget
/// @date : 2021/9/6
/// @name : jhf
/// @description :搜索页面 顶部banner
class SearchTopWidget extends GetCommonView<SearchController> {
  ///搜索点击事件
  final GestureTapCallback? onTap;

  ///清空内容点击事件
  final GestureTapCallback? deleteTap;

  ///输入框文字变化
  ValueChanged<String>? onChanged;

  ///输入框控制器
  TextEditingController? textController;

  SearchTopWidget(
      {Key? key,
      this.onChanged,
      this.onTap,
      this.deleteTap,
      required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Box.hBox15,
        Ripple(
            circular: 20,
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 24,
                color: ColorStyle.color_B8C0D4,
              ),
            )),
        Box.hBox10,
        Expanded(
            child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: SvgPicture.asset(
                R.assetsImagesSearch,
                color: Colors.black87,
                width: 24,
              ),
            ),
            Container(
              height: 36,
              decoration: DecorationStyle.colorShadowRadius30(),
              child: TextField(
                textAlign: TextAlign.left,
                autofocus: false,
                maxLines: 1,
                style: Styles.style_black_14,
                onChanged: onChanged,
                controller: textController,
                inputFormatters: [
                  ///输入长度和格式限制
                  CustomizedLengthTextInputFormatter(20),
                ],

                ///样式
                decoration: InputDecoration(
                    fillColor: Colors.white12,
                    filled: true,
                    hintText: StringStyles.searchHint.tr,
                    hintStyle: Styles.style_B8C0D4_14,
                    border: _getEditBorder(),
                    focusedBorder: _getEditBorder(),
                    disabledBorder: _getEditBorder(),
                    enabledBorder: _getEditBorder(),
                    contentPadding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 30, right: 30)),
              ),
            ),
            Positioned(
                right: 10,
                child: Obx(() => Visibility(
                    visible: controller.changeText.value.isNotEmpty,
                    child: Ripple(
                        onTap: deleteTap,
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.cancel_rounded,
                            color: ColorStyle.color_B8C0D4,
                            size: 18,
                          ),
                        ))))),
          ],
        )),
        Box.hBox5,
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              StringStyles.search.tr,
              style: Styles.style_1A2F51_14,
            ),
          ),
        ),
        Box.hBox10,
      ],
    );
  }

  ///获取输入框的Border属性，可公用
  ///[isEdit]是否获取焦点
  OutlineInputBorder _getEditBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}

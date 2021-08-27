import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/ui/page/user_module/feedback_page/feedback_controller.dart';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeedbackPhotoSelectWidget extends GetCommonView<FeedbackController>{

  const FeedbackPhotoSelectWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: controller.photoEntity.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, childAspectRatio: 1),
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          alignment: AlignmentDirectional.topEnd,
          fit: StackFit.loose,
          textDirection: TextDirection.ltr,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => controller.openGallery(index),
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: _getSelectWidget(index),
                ),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Offstage(
              offstage: index == controller.photoEntity.length,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => controller
                  ..photoEntity.removeAt(index)
                  ..update(),
                child: SizedBox(
                  width: 15,
                  height: 15,
                  child: Material(
                    color: ColorStyle.color_1A2F51,
                    child: const Icon(
                      Icons.close,
                      size: 10,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              // child:
            ),
          ],
        );
      },
    );
  }


  ///最后一张图片显示为+号，其他图片显示为本地图片，并进行裁剪
  ///[pos] 当前位置
  ///此处直接创建对象是因为在增加item时UI必须要重新绘制
  ///Element虚拟树层级一定会改变，所以此处直接返回一个新的Widget
  Widget _getSelectWidget(int pos) {
    if (pos == controller.photoEntity.length) {
      ///最后一张一定为加号
      return Container(
        width: 80,
        height: 80,
        color: Colors.white,
        alignment: Alignment.center,
        child: const Icon(
          Icons.add,
          size: 60,
          color: ColorStyle.color_B8C0D4,
        ),
      );
    } else {
      ///本地图片显示并裁剪
      return ClipRRect(
        child: Image.file(
          controller.photoEntity[pos],
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(3),
      );
    }
  }

}
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

/// @class : GetCommonView
/// @name : jhf
/// @description :基类,用于绑定Controller
abstract class GetCommonView<T extends GetxController> extends StatefulWidget {

  const GetCommonView({ Key? key }) : super(key: key);

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  ///Get 局部更新字段
  get updateId => null;

  @protected
  Widget build(BuildContext context);

  @override
  AutoDisposeState createState() => AutoDisposeState<T>();
}

/// @class : AutoDisposeState
/// @name : jhf
/// @description :基类,可自动装载的状态管理
class AutoDisposeState<S extends GetxController> extends State<GetCommonView> {
  AutoDisposeState();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<S>(
        id: widget.updateId,
        builder: (controller) {
          return widget.build(context);
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<S>();
    super.dispose();
  }
}

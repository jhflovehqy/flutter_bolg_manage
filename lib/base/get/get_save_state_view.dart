import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';


/// @class : GetCommonView
/// @name : jhf
/// @description :可持久化保存GetxController状态的Widget基类,用于绑定Controller
/// 由于在TabBarView中切换页面会导致状态重置，从而GetxController销毁
/// 再次切换时需要重新拉取所有信息，体验非常差，因此需要继承AutomaticKeepAliveClientMixin
/// 来达到拦截状态销毁的目的
abstract class GetSaveView<T extends GetxController> extends StatefulWidget {

  const GetSaveView({ Key? key }) : super(key: key);

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
class AutoDisposeState<S extends GetxController> extends State<GetSaveView>
    with AutomaticKeepAliveClientMixin<GetSaveView>{


  AutoDisposeState();

  @override
  Widget build(BuildContext context) {
    super.build(context);
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

  @override
  bool get wantKeepAlive => true;
}

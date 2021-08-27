import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

/// @class : GetNoView
/// @name : jhf
/// @description :基类,可自动装载的状态管理
abstract class GetNoView<S extends GetxController> extends StatelessWidget {

  const GetNoView({Key? key}) : super(key: key);

  final String? tag = null;

  S get controller => GetInstance().find<S>(tag: tag);

  Widget buildWidget(BuildContext context);

  @override
  Widget build(BuildContext context){
    return GetBuilder<S>(
        builder: (controller) {
          return buildWidget(context);
        }
    );
  }
}
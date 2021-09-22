import 'package:blog/base/get/getx_controller_inject.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/util/save/sp_util.dart';

/// @class : HistoryController
/// @date : 2021/9/9
/// @name : jhf
/// @description :历史记录 控制器层
class HistoryController extends BaseGetController {
  ///历史记录
  List<ProjectDetail> historyList = [];

  @override
  void onInit() {
    super.onInit();
    historyList = SpUtil.getBrowseHistoryModel();
    update();
  }



}

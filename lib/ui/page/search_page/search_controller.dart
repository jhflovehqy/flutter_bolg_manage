import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/points_detail.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// @class : SearchController
/// @date : 2021/9/3
/// @name : jhf
/// @description :积分明细 控制器层
class SearchController extends BaseGetPageController {
  ///积分数据
  List<Points> pointsList = [];

  ///请求积分明细
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {

  }
}

import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/points_detail.dart';
import 'package:blog/util/ext/refresher_extension.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

/// @class : PointsController
/// @date : 2021/08/25
/// @name : jhf
/// @description :积分明细 控制器层
class PointsController extends BaseGetPageController {
  ///积分数据
  List<Points> pointsList = [];

  ///请求积分明细
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    request.pointsDetail(page, success: (data, over) {
      RefreshExtension.onSuccess(controller, refresh, over);

      ///下拉刷新需要清除列表
      if (refresh != Refresh.down) {
        pointsList.clear();
      }
      pointsList.addAll(data);
      showSuccess(pointsList);
      update();
    }, fail: (code, msg) {
      showError();
      RefreshExtension.onError(controller, refresh);
    });
  }
}

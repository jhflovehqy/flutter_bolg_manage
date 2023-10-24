import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:get/get.dart';

import '../getx_controller_inject.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

/// @class : BaseGetPageController
/// @date : 2021/08/26
/// @name : jhf
/// @description :分页专用，如果页面中有分页加载，请使用此BaseGetPageController
/// 如果没有分页，请使用BaseGetController
/// 此页面暂时不对数据进行处理，不放置List在此处，因为当前已经很简洁了，不需要绑定[RefreshWidget]进行节省代码
class BaseGetPageController extends BaseGetController {
  ///加载状态  0加载中 1加载成功 2加载数据为空 3加载失败
  var loadState = 0.obs;

  ///当前页数
  int page = 1;

  ///是否初次加载
  var isInit = true;

  var controller;

  ///加载成功，是否显示空页面
  showSuccess(List suc) {
    loadState.value = suc.isNotEmpty ? 1 : 2;
  }

  ///加载失败,显示失败页面
  showError() {
    loadState.value = 3;
  }

  ///重新加载
  showLoading() {
    loadState.value = 0;
  }

  ///预留初次加载，注意只供上拉下拉使用
  initPullLoading(RefreshController controller) {
    if (isInit) {
      this.controller = controller;
      requestData(controller);
    }
  }

  ///预留上拉刷新
  onLoadRefresh(RefreshController controller) {
    page = 1;
    requestData(controller, refresh: Refresh.pull);
  }

  ///预留下拉加载
  onLoadMore(RefreshController controller) {
    ++page;
    requestData(controller, refresh: Refresh.down);
  }

  ///网络请求在此处进行，不用在重复进行上拉下拉的处理
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {}
}

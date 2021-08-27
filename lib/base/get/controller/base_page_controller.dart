import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../getx_controller_inject.dart';


/// @class : BaseGetPageController
/// @date : 2021/08/26
/// @name : jhf
/// @description :分页专用，如果页面中有分页加载，请使用此BaseGetPageController
/// 如果没有分页，请使用BaseGetController
/// 此页面暂时不对数据进行处理，不防止List在此处，因为当前已经很简洁了，不需要绑定[RefreshWidget]进行节省代码
class BaseGetPageController extends BaseGetController{


  ///加载状态
  var loadState = false.obs;
  ///当前页数
  int page = 1;


  ///预留初次加载，注意只供上拉下拉使用
  initPullLoading(RefreshController controller){
    requestData(controller);
  }

  ///预留上拉刷新
  onLoadRefresh(RefreshController controller){
    page = 1;
    requestData(controller , refresh :Refresh.pull);
  }

  ///预留下拉加载
  onLoadMore(RefreshController controller){
    ++ page;
    requestData(controller ,refresh :Refresh.down);
  }


  ///网络请求在此处进行，不用在重复进行上拉下拉的处理
  void requestData(RefreshController controller , {Refresh refresh = Refresh.first}) {}



}
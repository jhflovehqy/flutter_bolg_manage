import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/util/ext/refresher_extension.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


/// @class : ShareController
/// @date : 2021/9/14
/// @name : jhf
/// @description :分享页 控制器层
class ShareController extends BaseGetPageController {

  ///排行榜源数据
  List<ProjectDetail> shareList = [];


  ///请求积分明细
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    request.requestShareArticleList(page, success: (data , over) {
      RefreshExtension.onSuccess(controller, refresh , over);
      ///下拉刷新需要清除列表
      if(refresh != Refresh.down){
        shareList.clear();
      }
      shareList.addAll(data);
      showSuccess(shareList);
      update();
    },fail:  (code , msg){
      showError();
      RefreshExtension.onError(controller, refresh);
    });
  }



}

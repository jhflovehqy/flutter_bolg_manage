import 'package:blog/http/request_repository.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


/// @class : BaseGetController
/// @date : 2021/08/26
/// @name : jhf
/// @description :基类 Controller
class BaseGetController extends GetxController{


  ///HTTP请求仓库
  late RequestRepository request;
  ///加载状态
  // var loadState = false.obs;


  @override
  void onInit() {
    super.onInit();
    request = Get.find<RequestRepository>();
  }



  // ///预留初次加载，注意只供上拉下拉使用
  // initPullLoading(RefreshController controller){
  // }
  //
  // ///预留上拉刷新
  // onLoadRefresh(RefreshController controller){
  // }
  //
  // ///预留下拉加载
  // onLoadMore(RefreshController controller){
  //
  // }



}


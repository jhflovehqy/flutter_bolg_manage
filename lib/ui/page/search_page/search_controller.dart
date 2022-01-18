import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/hotword_mode.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/util/ext/refresher_extension.dart';
import 'package:blog/util/keyboard_util.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:get/get.dart';

/// @class : SearchController
/// @date : 2021/9/3
/// @name : jhf
/// @description :搜索页面 控制器层
class SearchController extends BaseGetPageController {
  ///当前热词Widget，由于热词从服务器加载，需要动态添加
  RxList<HotWord> hotWord = <HotWord>[].obs;

  ///搜索框输入词
  RxString changeText = ''.obs;

  ///搜索历史记录，从SP中取出动态生成
  RxList<String> history = <String>[].obs;

  ///搜索结果
  RxList<ProjectDetail> searchResult = <ProjectDetail>[].obs;

  ///输入框文本控制器
  TextEditingController textController = TextEditingController(text: '');

  ///控制搜索结果
  var showResult = false.obs;

  @override
  void onInit() {
    super.onInit();
    notifySearchHistory();
    getSearchHotWord();
  }

  ///上拉下拉搜索数据加载
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    ///搜索数据
    request.searchKeyWord(page, changeText.value, success: (data, over) {
      RefreshExtension.onSuccess(controller, refresh, over);

      ///下拉刷新需要清除列表
      if (refresh != Refresh.down) {
        searchResult.clear();
      }
      searchResult.addAll(data);
      showSuccess(searchResult);
      searchResult.value = searchResult.value;
    }, fail: (code, msg) {
      showError();
      RefreshExtension.onError(controller, refresh);
    });
  }

  ///获取搜索热词
  void getSearchHotWord() {
    request.getSearchHotWord(success: (data) {
      hotWord.value = data;
    });
  }

  ///组建成搜索历史Widget
  void notifySearchHistory() {
    var historyShow = SpUtil.getSearchHistory();

    ///最大显示10个历史记录
    if (historyShow.length > 10) {
      historyShow = historyShow.sublist(0, 10);
    }
    history.value = historyShow;
  }

  ///点击搜索历史或者热搜榜中的item
  ///[items] 搜索的内容
  void hotOrHistorySearch(String items) {
    ///改变存储中的值
    changeText.value = items;
    ///改变输入框内容，并更新当前光标在尾部
    textController.text = items;
    textController.selection =
        TextSelection(baseOffset: items.length, extentOffset: items.length);
    searchWord();
  }

  ///点击搜索存储搜索记录
  void searchWord() {
    if (changeText.value.isEmpty) {
      return;
    }
    page = 1;
    ///显示加载数据
    showResult.value = true;
    showLoading();
    ///更新搜索历史
    SpUtil.saveSearchHistory(changeText.value);
    notifySearchHistory();
    ///隐藏软键盘
    if(Get.context != null){
      KeyboardUtils.hideKeyboard(Get.context!);
    }

    if(controller != null){
      requestData(controller , refresh : Refresh.first);
      isInit = false;
    }
  }

  ///清空搜索历史
  void clearSearchHistory() {
    SpUtil.deleteSearchHistory();
    history.value = [];
  }
}

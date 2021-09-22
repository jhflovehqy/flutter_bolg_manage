import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/widget/over_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

///刷新状态
enum Refresh {
  ///初次进入页面加载
  first,

  ///上拉加载
  pull,

  ///下拉加载
  down,
}

/// @class : RefreshWidget
/// @date : 2021/08/26
/// @name : jhf
/// @description :上拉刷新、下拉加载、空白页加载动画
/// 通过在基类BaseGetController中维护上拉刷新、下拉加载、控制器等等状态
/// 不需要暴露给使用者，当然，此方法只能使用Getx框架有效
class RefreshWidget<Controller extends BaseGetPageController>
    extends StatefulWidget {
  RefreshWidget({
    Key? key,
    this.enablePullUp = true,
    this.enablePullDown = true,
    this.onRefresh,
    this.onLoadMore,
    required this.child,
  }) : super(key: key);

  final String? tag = null;

  ///获取BaseGetController子类对象，在GetX中，任何BaseGetController都可以通过此方法获取
  ///但是必须是没有dispose的Controller
  Controller get getController => GetInstance().find<Controller>(tag: tag);

  ///是否启用上拉
  bool enablePullUp = true;

  ///是否启用下拉
  bool enablePullDown = true;

  ///下拉刷新回调
  VoidCallback? onRefresh;

  ///上拉加载回调
  VoidCallback? onLoadMore;

  ///子类，必须是ListView
  Widget child;

  @override
  State<StatefulWidget> createState() {
    return RefreshWidgetState();
  }
}

///   with AutomaticKeepAliveClientMixin
class RefreshWidgetState extends State<RefreshWidget>
    with AutomaticKeepAliveClientMixin {
  ///内部维护[RefreshController] ，不暴露出去 , 上下刷新控制器
  RefreshController controller = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    widget.getController.initPullLoading(controller);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ///上下刷新、下拉加载控件
          Obx(() => Visibility(
              visible: widget.getController.loadState.value == 1,
              child: ScrollConfiguration(
                  behavior: OverScrollBehavior(),
                  child: SmartRefresher(
                      controller: controller,
                      enablePullDown: widget.enablePullDown,
                      enablePullUp: widget.enablePullUp,
                      onRefresh: () =>
                          widget.getController.onLoadRefresh(controller),
                      onLoading: () =>
                          widget.getController.onLoadMore(controller),
                      header: CustomHeader(
                        builder: (BuildContext context, RefreshStatus? mode) {
                          Widget header;
                          if (mode == RefreshStatus.idle) {
                            ///下拉时显示
                            header = Text(
                              StringStyles.refreshHeaderIdle.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          } else if (mode == RefreshStatus.refreshing) {
                            ///加载中
                            header = Lottie.asset(R.assetsLottieRefreshHeader,
                                width: 100, animate: true);
                          } else if (mode == RefreshStatus.failed) {
                            ///加载失败
                            header = Text(
                              StringStyles.refreshHeaderFailed.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          } else if (mode == RefreshStatus.completed) {
                            ///加载成功
                            header = Text(
                              StringStyles.refreshHeaderSuccess.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          } else {
                            ///超过二层
                            header = Text(
                              StringStyles.refreshHeaderFreed.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          }
                          return SizedBox(
                            height: 64,
                            child: Center(child: header),
                          );
                        },
                      ),
                      footer: CustomFooter(
                        builder: (BuildContext context, LoadStatus? mode) {
                          Widget footer;
                          if (mode == LoadStatus.idle) {
                            ///下拉提示
                            footer = const Text("pull up load");
                          } else if (mode == LoadStatus.loading) {
                            ///加载中
                            footer = Lottie.asset(R.assetsLottieRefreshFooter,
                                width: 200, animate: true);
                          } else if (mode == LoadStatus.failed) {
                            ///加载失败
                            footer = Text(
                              StringStyles.refreshError.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          } else {
                            ///无更多数据
                            footer = Text(
                              StringStyles.refreshNoData.tr,
                              style: Styles.style_B8C0D4_14,
                            );
                          }
                          return SizedBox(
                            height: 60,
                            child: Center(child: footer),
                          );
                        },
                      ),
                      child: widget.child)))),

          ///未加载前显示的动画，加载之后需要隐藏
          Obx(
            () => Visibility(
                visible: widget.getController.loadState.value == 0,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Lottie.asset(R.assetsLottiePageLoading,
                      width: 200, height: 200, animate: true),
                )),
          ),

          ///加载数据为空的页面
          Obx(
            () => Visibility(
                visible: widget.getController.loadState.value == 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(R.assetsLottieRefreshEmpty,
                        width: 200, animate: true, repeat: false),
                    Text(
                      StringStyles.refreshEmpty.tr,
                      style: Styles.style_B8C0D4_13,
                    )
                  ],
                )),
          ),

          ///加载出错的页面
          Obx(() => Visibility(
                visible: widget.getController.loadState.value == 3,
                child: Lottie.asset(
                  R.assetsLottieRefreshError,
                  width: 200,
                  animate: true,
                ),
              )),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

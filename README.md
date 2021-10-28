# blog

![在这里插入图片描述](https://img-blog.csdnimg.cn/904c9f0501a6437f8f66284a020319b7.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a626am55YWt5pyI5aSp,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

## | 前言
在当前大前端愈演愈烈的情况下，前有大名鼎鼎的QT、Facebook的RN、阿里的Weex，后有不断追赶的Flutter及原生+H5混合开发，大家都想要在跨平台这碗饭上夺取饭碗。在这种趋势下，前端开发者会有一丝迷惘，到底是跟随大家的脚步去学各种跨平台技术，还是把当前的技术精以至精，专注于某一平台！在学习各种技术之前，也有想过把时间花在看源码、学习他人成熟的框架，亦或是花时间写出一款高性能的框架！

## 为什么要学习Flutter？
大家都在学习，都在不断追赶，且相对来说跨平台会比单平台会更有竞争力，假如在当前的平台情况不乐观的情况下，还可以转去其他平台！对于中小企业来说，招聘一个跨平台人员可以节省成本；对于开发者来说，你不学别人学，你不会别人会，还怎么去保持竞争力？
在学习Flutter之前，也使用过其他的跨平台方案如RN，考虑是选择RN还是Flutter，最终选择Flutter的理由是：

 - 使用Dart语言开发，效率高，和Java语言相似
 - Flutter Widget 底层基于**Skia**绘制，性能强大、流畅
 - 路由设计解决了原开发平台导航的痛点
 - 成熟的体系及框架
 - 编译速度快且带有**热加载**(虽然Android原生使用了模块化，但是在合并后编译及打包的时间是真的长)

与其他跨平台方案的对比：
![在这里插入图片描述](https://img-blog.csdnimg.cn/a621d1519e4444898df8a3750826c5a2.png)

## 我的项目
**项目预览（Gif）：**
![在这里插入图片描述](https://img-blog.csdnimg.cn/19d66d9b9bcc42198eb267e960605da5.gif#pic_center)
**项目预览（PNG）：**
![在这里插入图片描述](https://img-blog.csdnimg.cn/2f56f2f805b647dc93294b7eaa8ba350.jpg?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a626am55YWt5pyI5aSp,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)
**资源下载：**

 - Github：[https://github.com/jhflovehqy/flutter_bolg_manage](https://github.com/jhflovehqy/flutter_bolg_manage)
 - 博时App下载：[https://www.pgyer.com/blog](https://www.pgyer.com/blog)
 - API地址：[https://www.wanandroid.com/blog/show/2](https://www.wanandroid.com/blog/show/2)
 - 博时App二维码下载：
 ![在这里插入图片描述](https://img-blog.csdnimg.cn/e98fa170641f467aa4118b87b79dcc26.png)

**项目简介：**

博时App是一款技术博客咨询类软件，项目有登录、注册、项目、积分排行榜、问题反馈、广场、问答、搜索、技术类项目、收藏、历史、个人信息、关于、分享等模块。

 - 项目使用[Getx](https://pub.flutter-io.cn/packages/get)框架作为状态管理框架，能更高效的管理路由，响应式刷新Widget，最最最主要是无需上下文，能在全局和模块间共享状态
 - 符合[Material Design](https://developer.android.google.cn/guide/topics/ui/look-and-feel)界面设计风格，颜色更鲜艳，动画效果更加明显，在圆角、阴影、动画、色彩搭配方面尤其突出
 - 语言**国际化**，采用多语言，目前支持的有简体中文、繁体中文、英文
 - 请求接口使用[Dio](https://github.com/flutterchina/dio)进行二次封装，一行代码完成接口请求，且有Dialog动画显示、请求日志打印、异常解析、添加请求头等功能
 - 完美封装上拉刷新，下拉加载等功能，且无需手动管理分页、无需重复请求、可自动装载，在不同状态显示不同的Widget，详情可查看[BaseGetPageController](https://github.com/jhflovehqy/flutter_bolg_manage/blob/master/lib/base/get/controller/base_page_controller.dart) 和 [RefreshWidget](https://github.com/jhflovehqy/flutter_bolg_manage/blob/master/lib/widget/pull_smart_refresher.dart)
 - 良好的注释风格，符合注释规范
 - 目录层级清晰，模块划分可快速查找
 - 基于**Flutter2.0**，支持空安全，无需后续升级

**使用的第三方框架**

```
  # rxdart https://pub.flutter-io.cn/packages/rxdart
  rxdart: ^0.27.1
  #GetX状态管理框架 https://pub.flutter-io.cn/packages/get
  get: 4.3.7
  #toast https://pub.flutter-io.cn/packages/fluttertoast
  fluttertoast: ^8.0.8
  # 网络请求库 https://github.com/flutterchina/dio
  dio: 4.0.0
  # 网络检测 https://pub.flutter-io.cn/packages/connectivity
  connectivity: 3.0.6
  # 加载SVG图片 https://pub.flutter-io.cn/packages/flutter_svg
  flutter_svg: 0.22.0
  # lottie动画 https://pub.flutter-io.cn/packages/flutter_lottie
  lottie: ^1.1.0
  # SP键值对存储 https://pub.flutter-io.cn/packages/shared_preferences
  shared_preferences: ^2.0.6
  # WebView
  webview_flutter: ^2.0.12
  #读取相册
  image_picker: 0.8.3+3
  # https://github.com/flutter/plugins/tree/master/packages/url_launcher
  url_launcher: ^6.0.9
  #文件路径管理工具类
  path_provider: ^2.0.2
  #上拉刷新、下拉加载
  pull_to_refresh: ^2.0.0
  #加载html标签
  flutter_html: ^2.1.2
  #调用分享平台 https://pub.flutter-io.cn/packages/share
  share: ^2.0.4
  #图片保存到本地 https://pub.flutter-io.cn/packages/image_gallery_saver
  image_gallery_saver: ^1.7.1
  #权限申请框架 https://pub.flutter-io.cn/packages/permission_handler
  permission_handler: ^8.1.6

```


  **项目结构**
 ![在这里插入图片描述](https://img-blog.csdnimg.cn/f951ac1ad2d840f2ba2c37dbf0feb0a5.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a626am55YWt5pyI5aSp,size_11,color_FFFFFF,t_70,g_se,x_16)


**技术支持**

 - 首先，感谢鸿洋大佬提供的[WanAndroid公共API接口](https://www.wanandroid.com/blog/show/2)，博时App使用了大部分接口来完善功能！
 - [Flutter中文网](https://flutterchina.club/docs/)
 - 感谢掘金的[艾维码大神](https://juejin.cn/user/729731450022440/posts)的Flutter系列文章，让我在各种状态管理框架中一眼看中了Getx



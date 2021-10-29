**Flutter企业级项目实战——博时App：**

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

**与其他跨平台方案的对比：**
![在这里插入图片描述](https://img-blog.csdnimg.cn/a621d1519e4444898df8a3750826c5a2.png)

## 我的项目
**项目预览（Gif）：**
![在这里插入图片描述](https://img-blog.csdnimg.cn/19d66d9b9bcc42198eb267e960605da5.gif#pic_center)
<hr style=" border:solid; width:100px; height:1px;" color=#000000 size=1">

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

<hr style=" border:solid; width:100px; height:1px;" color=#000000 size=1">

**为什么使用Getx**

 - **Fish Redux?**

   在未使用Flutter之前，我只听说过Flutter在闲鱼团队中广泛使用，通过开启显示布局边界也能看出闲鱼APP的大部分页面都使用了Flutter。在决定使用Flutter进行项目开发时，首选就是想使用闲鱼Fish Redux状态管理框架进行开发，了解了Fish Redux使用方法、优缺点后，通过插件生成模板代码后是这样的：
   ![在这里插入图片描述](https://img-blog.csdnimg.cn/fd3d77c7ad1b4bce9027369307fef376.png)
   我觉得对于中小型项目来说，使用Fish Redux反而是一种累赘，太多的结构分离只会使项目更加不好管理！且Fish Redux在Flutter2发布之后迟迟未支持空安全，稳定性不言而喻！
   
 - **Provider?**
Provider 通过观察者模式来触发Widget更新，确实能有效的进行状态管理，但Provider太过于依赖context上下文，非父子组件的状态管理问题，需要通过发送事件总线通知或全局的方式来处理。

 - **MobX ?**
MobX也是基于观察者模式，使用简单快速上手，不会存在 Redux 顶级状态管理难以分而治之的问题，但是MobX使用了大量注解且在编译时生成代码，会耗费大量的时间。

 - **Getx?**
 Getx在众多的Flutter状态管理框架中并不是那么出名，但是在熟悉它的使用后立马就认定了它，在逐渐认识的过程中，总结了它的优点：
（1）**轻量级**。Getx分为Binding层、Controller层，且每一层负责的事务都清晰可见。
（2）**依赖注入**。Binding负责把需要的对象进行依赖注入，也可以使用Get.lazyPut在使用时才进入注入，代码层级可以完全分离。
（3）**路由导航**。Getx重定义了Naviation的接口，使用更加简单的方式进行导航传值及路由返回，且无须使用context上下文。
（4）**使用方便、无侵入**。在封装了基类之后，基本上只需要继承基类就行，无须在顶层套娃。且入手简单，基本上了解之后使用起来比较容易上手。
（5）**性能**。Getx的Binding层（注入层）绑定了路由栈，当前栈在销毁时，注入层会自动释放对象，不需要手动释放，不会造成堆积大量对象在内存中。
（6）**丰富的API**。例如打开Dialog，无论你是否在Widget层中，都可以无需context使用Get.dialog来打开弹窗。


<hr style=" border:solid; width:100px; height:1px;" color=#000000 size=1">

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
<hr style=" border:solid; width:100px; height:1px;" color=#000000 size=1">

  **项目结构**
 ![在这里插入图片描述](https://img-blog.csdnimg.cn/f951ac1ad2d840f2ba2c37dbf0feb0a5.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA5a626am55YWt5pyI5aSp,size_11,color_FFFFFF,t_70,g_se,x_16)
<hr style=" border:solid; width:100px; height:1px;" color=#000000 size=1">

**技术支持**

 - 首先，感谢鸿洋大佬提供的[WanAndroid公共API接口](https://www.wanandroid.com/blog/show/2)，博时App使用了大部分接口来完善功能！
 - [Flutter中文网](https://flutterchina.club/docs/)
 - 感谢掘金的[艾维码大神](https://juejin.cn/user/729731450022440/posts)的Flutter系列文章，让我在各种状态管理框架中一眼看中了Getx



**总结**

虽然博时APP不是特别完美，如部分细节未处理到位、不支持一键更换主题，但是它绝对是一个可快速入手的开源项目，在封装Widget和网络请求、状态冲突时，也花了不少心血去设计，在代码注释方面，也添加了不少注释，挖了不少的坑。在使用Flutter开发项目时，也可以借鉴此项目来进行开发，能节省不少时间！后续会对博时APP进行更新维护！

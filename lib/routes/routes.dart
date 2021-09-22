import 'package:blog/ui/page/home_page/home_binding.dart';
import 'package:blog/ui/page/home_page/home_page.dart';
import 'package:blog/ui/page/login_page/login_binding.dart';
import 'package:blog/ui/page/login_page/login_page.dart';
import 'package:blog/ui/page/register_page/register_binding.dart';
import 'package:blog/ui/page/register_page/register_page.dart';
import 'package:blog/ui/page/search_page/search_binding.dart';
import 'package:blog/ui/page/search_page/search_page.dart';
import 'package:blog/ui/page/splash_page/splash_binding.dart';
import 'package:blog/ui/page/splash_page/splash_page.dart';
import 'package:blog/ui/page/user_module/about_page/about_binding.dart';
import 'package:blog/ui/page/user_module/about_page/about_page.dart';
import 'package:blog/ui/page/user_module/collect_page/collect_binding.dart';
import 'package:blog/ui/page/user_module/collect_page/collect_page.dart';
import 'package:blog/ui/page/user_module/feedback_page/feedback_binding.dart';
import 'package:blog/ui/page/user_module/feedback_page/feedback_page.dart';
import 'package:blog/ui/page/user_module/history_page/history_binding.dart';
import 'package:blog/ui/page/user_module/history_page/history_page.dart';
import 'package:blog/ui/page/user_module/points_page/points_binding.dart';
import 'package:blog/ui/page/user_module/points_page/points_page.dart';
import 'package:blog/ui/page/user_module/ranking_page/ranking_binding.dart';
import 'package:blog/ui/page/user_module/ranking_page/ranking_page.dart';
import 'package:blog/ui/page/user_module/setting_page/setting_binding.dart';
import 'package:blog/ui/page/user_module/setting_page/setting_page.dart';
import 'package:blog/ui/page/user_module/setting_page/widget/setting_language_page.dart';
import 'package:blog/ui/page/user_module/share_page/share_binding.dart';
import 'package:blog/ui/page/user_module/share_page/share_page.dart';
import 'package:blog/ui/page/user_module/user_info_page/userinfo_binding.dart';
import 'package:blog/ui/page/user_module/user_info_page/userinfo_page.dart';
import 'package:blog/ui/page/webview_page/webview_binding.dart';
import 'package:blog/ui/page/webview_page/webview_page.dart';
import 'package:get/get.dart';

/// @class : Routes
/// @name : jhf
/// @description :页面管理
abstract class Routes {
  ///入口模块
  static const String splashPage = '/splash';

  ///登录模块
  static const String loginPage = '/login';

  ///注册
  static const String registerPage = '/register';

  ///主页
  static const String homePage = '/home';

  ///webView
  static const String webViewPage = '/webView';

  ///入口模块
  static const String feedbackPage = '/feedback';

  ///用户信息模块
  static const String userInfoPage = '/userInfo';

  ///积分排行榜
  static const String rankingPage = '/ranking';

  ///关于我们
  static const String aboutPage = '/about';

  ///积分明细
  static const String pointsPage = '/points';

  ///设置
  static const String settingPage = '/setting';

  ///语言
  static const String settingLanguagePage = '/language';

  ///我的收藏
  static const String collectPage = '/collect';

  ///搜索页面
  static const String searchPage = '/search';

  ///浏览记录
  static const String historyPage = '/history';

  ///分享页面
  static const String sharePage = '/share';

  ///页面合集
  static final routePage = [
    GetPage(
        name: splashPage,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: registerPage,
        page: () => const RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: webViewPage,
        page: () => const WebViewPage(),
        binding: WebViewBinding()),
    GetPage(
        name: homePage,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: feedbackPage,
        page: () =>  const FeedbackPage(),
        binding: FeedbackBinding()),
    GetPage(
        name: loginPage,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: userInfoPage,
        page: () => const UserInfoPage(),
        binding: UserInfoBinding()),
    GetPage(
        name: rankingPage,
        page: () => const RankingPage(),
        binding: RankingBinding()),
    GetPage(
        name: aboutPage,
        page: () => const AboutPage(),
        binding: AboutBinding()),
    GetPage(
        name: pointsPage,
        page: () => const PointsPage(),
        binding: PointsBinding()),
    GetPage(
        name: settingPage,
        page: () => const SettingPage(),
        binding: SettingBinding()),
    GetPage(
        name: settingLanguagePage,
        page: () => const SettingLanguagePage(),
    ),
    GetPage(
        name: collectPage,
        page: () => const CollectPage(),
        binding: CollectBinding()),
    GetPage(
        name: searchPage,
        page: () => const SearchPage(),
        binding: SearchBinding()),
    GetPage(
        name: historyPage,
        page: () => const HistoryPage(),
        binding: HistoryBinding()),
    GetPage(
        name: sharePage,
        page: () => const SharePage(),
        binding: ShareBinding()),
  ];
}

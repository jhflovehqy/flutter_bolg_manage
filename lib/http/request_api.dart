
/// @class : RequestApi
/// @name : jhf
/// @description :请求接口管理
class RequestApi{

  ///前缀地址
  static const String baseurl = 'https://www.wanandroid.com/';


  ///登录接口
  static const String apiLogin = 'user/login';
  ///注册接口
  static const String apiRegister= 'user/register';
  ///用户信息接口
  static const String apiUserInfo = 'user/lg/userinfo/json';
  ///首页Tab栏接口
  static const String apiTab = 'project/tree/json';
  ///项目接口
  static const String apiProject = 'article/listproject/page/json';
  ///积分排行榜接口
  static const String apiRanking = 'coin/rank/page/json';
  ///收藏站内文章
  static const String apiCollect = 'lg/collect/id/json';
  ///取消收藏站内文章
  static const String apiUnCollect = 'lg/uncollect_originId/id/json';
  ///积分明细
  static const String apiPoints = 'lg/coin/list/page/json';
  ///退出登录
  static const String apiLogout = 'user/logout/json';
  ///我的收藏
  static const String apiCollectDetail = 'lg/collect/list/page/json';
  ///问答列表
  static const String apiAsk = 'wenda/list/page/json';
  ///广场列表
  static const String apiSquare = 'user_article/list/page/json';
  ///首页banner轮播图
  static const String apiBanner = 'banner/json';
  ///搜索热词
  static const String apiHotWord = 'hotkey/json';
  ///搜索文章
  static const String apiSearchWord = 'article/query/page/json';
  ///首页文章
  static const String apiHome = 'article/list/page/json';
  ///公众号列表
  static const String apiWechatPublic = 'wxarticle/chapters/json';
  ///分享文章到站点
  static const String apiAddArticle = 'lg/user_article/add/json';
  ///获取分享的文章列表
  static const String apiShareArticleList = 'user/lg/private_articles/page/json';
}



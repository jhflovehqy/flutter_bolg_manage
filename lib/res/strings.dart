import 'package:get/get.dart';

/// @class : StringStyles
/// @name : jhf
/// @description :字符管理
class StringStyles{

  static const String appName = 'appName';
  static const String loading = 'loading';

  static const String loginAccountNameHint = 'loginAccountNameHint';
  static const String loginAccountPwdHint = 'loginAccountPwdHint';
  static const String loginAccountRePwdHint = 'loginAccountRePwdHint';
  static const String loginButton = 'loginButton';
  static const String loginSuccess = 'loginSuccess';

  static const String registerButton = 'registerButton';
  static const String registerServiceTerms = 'registerServiceTerms';
  static const String registerAccountEmpty = 'registerAccountEmpty';
  static const String registerAccountLength = 'registerAccountLength';
  static const String registerPasswordEmpty = 'registerPasswordEmpty';
  static const String registerPasswordLength = 'registerPasswordLength';
  static const String registerRePasswordEmpty = 'registerRePasswordEmpty';
  static const String registerRePasswordLength = 'registerRePasswordLength';
  static const String registerPasswordDiff = 'registerPasswordDiff';
  static const String registerNotServiceTerms = 'registerNotServiceTerms';
  static const String registerSuccess = 'registerSuccess';

  static const String homeComplex = 'homeComplex';
  static const String homeProject = 'homeProject';
  static const String homeMy = 'homeMy';
  static const String homeCollect = 'homeCollect';
  static const String homePoints = 'homePoints';
  static const String homePartake = 'homePartake';
  static const String homeHistory = 'homeHistory';
  static const String homeUserInfo = 'homeUserInfo';
  static const String homeAbout = 'homeAbout';
  static const String homeShare = 'homeShare';
  static const String homeFeedback = 'homeFeedback';

  static const String webEditHint = 'webEditHint';
  static const String webNotComment = 'webNotComment';

  static const String userNickname = 'userNickname';
  static const String userPointsRanking = 'userPointsRanking';

  static const String userRankingTitle = 'userRankingTitle';
  static const String userRankingNumber = 'userRankingNumber';
  static const String userRankingCoin = 'userRankingCoin';

  static const String aboutTitle = 'aboutTitle';
  static const String aboutVersion = 'aboutVersion:';
  static const String aboutBuild = 'aboutBuild';
  static const String aboutGithub= 'aboutGithub';
  static const String aboutCSDN = 'aboutCSDN';
  static const String aboutSupport = 'aboutSupport';
  static const String aboutCopyright = 'aboutCopyright';

  static const String feedbackTitleStar = "feedbackTitleStar";
  static const String feedbackHint = "feedbackHint";
  static const String feedbackUploadPhoto = "feedbackUploadPhoto";
  static const String feedbackContact = "feedbackContact";
  static const String feedbackOptional = "feedbackOptional";
  static const String feedbackConnectQQ = "feedbackConnectQQ";
  static const String feedbackConnectHint = "feedbackConnectHint";
  static const String feedbackSubmit = "feedbackSubmit";
  static const String feedbackToast = "feedbackToast";
  static const String feedbackSuccess = "feedbackSuccess";
  static const String feedbackContent = "feedbackContent";

  static const String pointsDetailTitle= "pointsDetailTitle";
  static const String pointsNotifySuccess = "pointsNotifySuccess";

  static const String settingTitle = "settingTitle";
  static const String settingLanguage = "settingLanguage";
  static const String settingLanguageDefault = "settingLanguageDefault";
  static const String settingCache = "settingCache";
  static const String settingCacheSuccess = "settingCacheSuccess";
  static const String settingCacheFail = "settingCacheFail";
  static const String settingExitLogin = "settingExitLogin";

  static const String refreshNoData = "refreshNoData";
  static const String refreshError= "refreshError";
  static const String refreshPull= "refreshPull";
  static const String refreshHeaderIdle= "refreshHeaderIdle";
  static const String refreshHeaderFailed= "refreshHeaderFailed";
  static const String refreshHeaderSuccess = "refreshHeaderSuccess";
  static const String refreshHeaderFreed = "refreshHeaderFreed";
  static const String refreshEmpty = "refreshEmpty";

  static const String collectTitle = "collectTitle";

  static const String enter = "enter";
  static const String quit = "quit";

  static const String shareApplication = "shareApplication";
  static const String shareHint = "shareHint";
  static const String shareSaveLocal= "shareSaveLocal";
  static const String shareBrowser = "shareBrowser";
  static const String saveSuccess = "saveSuccess";
  static const String saveFail = "saveFail";

  static const String tabHome= "tabHome";
  static const String tabSquare= "tabSquare";
  static const String tabAsk = "tabAsk";
  static const String tabWechatPublic = "tabWechatPublic";
  static const String tabWechatSwitch = "tabWechatSwitch";
  static const String tabWechatDelete = "tabWechatDelete";

  static const String searchHint = "searchHint";
  static const String search = "search";
  static const String searchHistory = "searchHistory";
  static const String searchHotWord = "searchHotWord";

  static const String historyTitle = "historyTitle";

  static const String shareArticleTitle = "shareArticleTitle";
  static const String shareArticleEnter = "shareArticleEnter";
  static const String shareArticleHint = "shareArticleHint";
  static const String shareArticleEdit = "shareArticleEdit";
  static const String shareArticleSuccess = "shareArticleSuccess";

  static const String shareTitle = "shareTitle";
  static const String collectSuccess = "collectSuccess";
  static const String collectQuit = "collectQuit";

  static const String notSupportLikes = "notSupportLikes";
}

///使用Get配置语言环境
///使用Get.updateLocale(locale);即可更新
class Messages extends Translations{
  @override
  Map<String, Map<String, String>> get keys =>{
    'zh_CN' :{
      StringStyles.appName : '博时',
      StringStyles.loading : '加载中...',
      StringStyles.loginAccountNameHint : '请输入账号名',
      StringStyles.loginAccountPwdHint : '请输入密码',
      StringStyles.loginAccountRePwdHint : '请再次输入密码',
      StringStyles.loginButton : '登录',
      StringStyles.loginSuccess : '登录成功',
      StringStyles.registerButton : '注册',
      StringStyles.registerServiceTerms : '已阅读并同意服务条款',
      StringStyles.registerAccountEmpty : '请输入用户名～',
      StringStyles.registerAccountLength : '用户名至少6位～',
      StringStyles.registerPasswordEmpty : '请输入密码～',
      StringStyles.registerPasswordLength : '密码至少6位～',
      StringStyles.registerRePasswordEmpty : '请确认输入密码～',
      StringStyles.registerRePasswordLength : '确认密码至少6位～',
      StringStyles.registerPasswordDiff : '两次输入的密码不一致～',
      StringStyles.registerNotServiceTerms : '请同意服务条款～',
      StringStyles.registerSuccess : '注册成功～',
      StringStyles.homeComplex : '综合',
      StringStyles.homeProject : '项目',
      StringStyles.homeMy : '我的',
      StringStyles.homeCollect : '收藏',
      StringStyles.homePoints : '积分',
      StringStyles.homePartake : '分享',
      StringStyles.homeHistory : '历史',
      StringStyles.homeUserInfo : '个人信息',
      StringStyles.homeAbout : '关于',
      StringStyles.homeShare : '分享',
      StringStyles.homeFeedback : '问题反馈',
      StringStyles.webEditHint : '说点什么吧...',
      StringStyles.webNotComment : '暂不支持发表评论哟',
      StringStyles.userNickname : '昵称',
      StringStyles.userPointsRanking : '快来查看积分排行榜吧~',
      StringStyles.userRankingTitle : '积分排行榜',
      StringStyles.userRankingNumber : '排名',
      StringStyles.userRankingCoin : '累计积分',
      StringStyles.aboutTitle : '关于博时',
      StringStyles.aboutVersion : '版本:',
      StringStyles.aboutBuild : 'build:',
      StringStyles.aboutGithub: 'Github',
      StringStyles.aboutCSDN : 'CSDN',
      StringStyles.aboutSupport : '技术支持',
      StringStyles.aboutCopyright : 'Copyright@2021\nAll Right Reserved',
      StringStyles.feedbackTitleStar : "问题反馈*",
      StringStyles.feedbackHint : "您可以在这里输入反馈内容",
      StringStyles.feedbackUploadPhoto : "上传截图",
      StringStyles.feedbackContact : "联系方式",
      StringStyles.feedbackOptional : "(选填)",
      StringStyles.feedbackConnectQQ : "联系QQ群:704273239",
      StringStyles.feedbackConnectHint : "请输入您的联系方式",
      StringStyles.feedbackSubmit : "提交",
      StringStyles.feedbackToast : "最多选择4张哟~",
      StringStyles.feedbackSuccess : "反馈成功!",
      StringStyles.feedbackContent : "请填写反馈内容!",
      StringStyles.pointsDetailTitle: "积分明细",
      StringStyles.settingTitle : "设置",
      StringStyles.settingLanguage : "语言",
      StringStyles.settingLanguageDefault : "跟随系统",
      StringStyles.settingCache : "清除缓存",
      StringStyles.settingCacheSuccess : "清除缓存成功!",
      StringStyles.settingCacheFail : "清除缓存失败!",
      StringStyles.settingExitLogin : "退出登录",
      StringStyles.pointsNotifySuccess : "刷新成功",
      StringStyles.refreshNoData : "没有更多数据啦",
      StringStyles.refreshError : "加载失败!",
      StringStyles.refreshPull : "下拉加载",
      StringStyles.refreshHeaderIdle : "上拉刷新",
      StringStyles.refreshHeaderFreed : "释放刷新",
      StringStyles.refreshHeaderFailed : "刷新失败!",
      StringStyles.refreshHeaderSuccess : "刷新成功",
      StringStyles.collectTitle : "我的收藏",
      StringStyles.enter : "确认",
      StringStyles.quit : "取消",
      StringStyles.shareApplication : "实用博客APP推荐给您",
      StringStyles.shareHint : "博时,您的博客管家",
      StringStyles.shareSaveLocal : "保存到本地",
      StringStyles.shareBrowser : "浏览器打开",
      StringStyles.saveSuccess :  "保存成功",
      StringStyles.saveFail : "保存失败",
      StringStyles.tabHome :  "首页",
      StringStyles.tabSquare :  "广场",
      StringStyles.tabAsk :  "问答",
      StringStyles.searchHint :  "搜索您想要的内容",
      StringStyles.search :  "搜索",
      StringStyles.searchHistory :  "搜索历史",
      StringStyles.searchHotWord :  "热搜榜",
      StringStyles.refreshEmpty : '没有更多内容啦~',
      StringStyles.tabWechatPublic : '推荐一波优秀的技术公众号~',
      StringStyles.tabWechatSwitch : '换一批  ',
      StringStyles.tabWechatDelete : '不感兴趣',
      StringStyles.historyTitle : '浏览历史',
      StringStyles.shareArticleTitle : '分享文章',
      StringStyles.shareArticleEnter : '分享到本应用',
      StringStyles.shareArticleHint : '给文章设置一个响亮的标题把~',
      StringStyles.shareArticleEdit : '请输入文章标题~',
      StringStyles.shareArticleSuccess :'分享成功',
      StringStyles.shareTitle : '我的分享',
      StringStyles.collectSuccess : '收藏成功',
      StringStyles.collectQuit : '取消收藏成功',
      StringStyles.notSupportLikes : "暂不支持点赞哟~"
    },
    'zh_HK' :{
      StringStyles.appName : '博時',
      StringStyles.loading : '加載中...',
      StringStyles.loginAccountNameHint : '請輸入賬戶名',
      StringStyles.loginAccountPwdHint : '請輸入密碼',
      StringStyles.loginAccountRePwdHint : '請再次輸入密碼',
      StringStyles.loginButton : '登錄',
      StringStyles.loginSuccess : '登錄成功',
      StringStyles.registerButton : '註冊',
      StringStyles.registerServiceTerms : '已閱讀並同意服務條款',
      StringStyles.registerAccountEmpty : '請輸入與用戶名～',
      StringStyles.registerAccountLength : '用戶名至少6位～',
      StringStyles.registerPasswordEmpty : '請輸入密碼～',
      StringStyles.registerPasswordLength : '密碼至少6位～',
      StringStyles.registerRePasswordEmpty : '請輸入確認密碼～',
      StringStyles.registerRePasswordLength : '確認密碼至少6位～',
      StringStyles.registerPasswordDiff : '兩次輸入的密碼不一致～',
      StringStyles.registerNotServiceTerms : '請同意服務條款～',
      StringStyles.registerSuccess : '註冊成功～',
      StringStyles.homeComplex : '綜合',
      StringStyles.homeProject : '項目',
      StringStyles.homeMy : '我的',
      StringStyles.homeCollect : '收藏',
      StringStyles.homePoints : '積分',
      StringStyles.homePartake : '分享',
      StringStyles.homeHistory : '歷史',
      StringStyles.homeUserInfo : '個人信息',
      StringStyles.homeAbout : '關於',
      StringStyles.homeShare : '分享',
      StringStyles.homeFeedback : '問題反饋',
      StringStyles.webEditHint : '說點什麼吧...',
      StringStyles.webNotComment : '暫不支持發表評論喲',
      StringStyles.userNickname : '暱稱',
      StringStyles.userPointsRanking : '快來查看積分排行榜吧~',
      StringStyles.userRankingTitle : '積分排行榜',
      StringStyles.userRankingNumber : '排名',
      StringStyles.userRankingCoin : '累計積分',
      StringStyles.aboutTitle : '關於博時',
      StringStyles.aboutVersion : '版本:',
      StringStyles.aboutBuild : 'build:',
      StringStyles.aboutGithub: 'Github',
      StringStyles.aboutCSDN : 'CSDN',
      StringStyles.aboutSupport : '技術支持',
      StringStyles.aboutCopyright : 'Copyright@2021\nAll Right Reserved',
      StringStyles.feedbackTitleStar : "問題反饋*",
      StringStyles.feedbackHint : "您可以在這裡輸入反饋內容",
      StringStyles.feedbackUploadPhoto : "上次截圖",
      StringStyles.feedbackContact : "聯繫方式",
      StringStyles.feedbackOptional : "(選填)",
      StringStyles.feedbackConnectQQ : "聯繫QQ群:704273239",
      StringStyles.feedbackConnectHint : "請輸入您的聯繫方式",
      StringStyles.feedbackSubmit : "提交",
      StringStyles.feedbackToast : "最多選擇4張喲~",
      StringStyles.feedbackSuccess : "反饋成功!",
      StringStyles.feedbackContent : "請填寫反饋內容!",
      StringStyles.pointsDetailTitle: "積分明細",
      StringStyles.settingTitle : "設置",
      StringStyles.settingLanguage : "語言",
      StringStyles.settingLanguageDefault : "跟隨系統",
      StringStyles.settingCache : "清除緩存",
      StringStyles.settingCacheSuccess : "清除緩存成功!",
      StringStyles.settingCacheFail : "清除緩存失敗!",
      StringStyles.settingExitLogin : "退出登錄",
      StringStyles.pointsNotifySuccess : "刷新成功",
      StringStyles.refreshNoData : "沒有更多數據啦",
      StringStyles.refreshError : "加載失敗!",
      StringStyles.refreshPull : "下拉加載",
      StringStyles.refreshHeaderIdle : "上拉刷新",
      StringStyles.refreshHeaderFreed : "釋放刷新",
      StringStyles.refreshHeaderFailed : "刷新失敗!",
      StringStyles.refreshHeaderSuccess : "刷新成功",
      StringStyles.collectTitle : "我的收藏",
      StringStyles.enter : "確認",
      StringStyles.quit : "取消",
      StringStyles.shareApplication : "實用博客APP推薦給您",
      StringStyles.shareHint : "博時,您的博客管家",
      StringStyles.shareSaveLocal : "保存到本地",
      StringStyles.shareBrowser : "瀏覽器打開",
      StringStyles.saveSuccess :  "保存成功",
      StringStyles.saveFail : "保存失敗",
      StringStyles.tabHome :  "首頁",
      StringStyles.tabSquare :  "廣場",
      StringStyles.tabAsk :  "問答",
      StringStyles.searchHint :  "搜索您想要的內容",
      StringStyles.search :  "搜索",
      StringStyles.searchHistory :  "搜索歷史",
      StringStyles.searchHotWord :  "熱搜榜",
      StringStyles.refreshEmpty : '沒有更多內容啦~',
      StringStyles.tabWechatPublic : '推薦一波優秀的技術公眾號~',
      StringStyles.tabWechatSwitch : '換一批  ',
      StringStyles.tabWechatDelete : '不感興趣',
      StringStyles.historyTitle : '瀏覽歷史',
      StringStyles.shareArticleTitle : '分享文章',
      StringStyles.shareArticleEnter : '分享到本應用',
      StringStyles.shareArticleHint : '給文章設置一個響亮的標題吧~',
      StringStyles.shareArticleEdit : '請輸入文章標題~',
      StringStyles.shareArticleSuccess :'分享成功',
      StringStyles.shareTitle : '我的分享',
      StringStyles.collectSuccess : '收藏成功',
      StringStyles.collectQuit : '取消收藏成功',
      StringStyles.notSupportLikes : "暫不支持點讚喲~"
    },
    'zh_TW' :{
      StringStyles.appName : '博時',
      StringStyles.loading : '加載中...',
      StringStyles.loginAccountNameHint : '請輸入賬戶名',
      StringStyles.loginAccountPwdHint : '請輸入密碼',
      StringStyles.loginAccountRePwdHint : '請再次輸入密碼',
      StringStyles.loginButton : '登錄',
      StringStyles.loginSuccess : '登錄成功',
      StringStyles.registerButton : '註冊',
      StringStyles.registerServiceTerms : '已閱讀並同意服務條款',
      StringStyles.registerAccountEmpty : '請輸入與用戶名～',
      StringStyles.registerAccountLength : '用戶名至少6位～',
      StringStyles.registerPasswordEmpty : '請輸入密碼～',
      StringStyles.registerPasswordLength : '密碼至少6位～',
      StringStyles.registerRePasswordEmpty : '請輸入確認密碼～',
      StringStyles.registerRePasswordLength : '確認密碼至少6位～',
      StringStyles.registerPasswordDiff : '兩次輸入的密碼不一致～',
      StringStyles.registerNotServiceTerms : '請同意服務條款～',
      StringStyles.registerSuccess : '註冊成功～',
      StringStyles.homeComplex : '綜合',
      StringStyles.homeProject : '項目',
      StringStyles.homeMy : '我的',
      StringStyles.homeCollect : '收藏',
      StringStyles.homePoints : '積分',
      StringStyles.homePartake : '分享',
      StringStyles.homeHistory : '歷史',
      StringStyles.homeUserInfo : '個人信息',
      StringStyles.homeAbout : '關於',
      StringStyles.homeShare : '分享',
      StringStyles.homeFeedback : '問題反饋',
      StringStyles.webEditHint : '說點什麼吧...',
      StringStyles.webNotComment : '暫不支持發表評論喲',
      StringStyles.userNickname : '暱稱',
      StringStyles.userPointsRanking : '快來查看積分排行榜吧~',
      StringStyles.userRankingTitle : '積分排行榜',
      StringStyles.userRankingNumber : '排名',
      StringStyles.userRankingCoin : '累計積分',
      StringStyles.aboutTitle : '關於博時',
      StringStyles.aboutVersion : '版本:',
      StringStyles.aboutBuild : 'build:',
      StringStyles.aboutGithub: 'Github',
      StringStyles.aboutCSDN : 'CSDN',
      StringStyles.aboutSupport : '技術支持',
      StringStyles.aboutCopyright : 'Copyright@2021\nAll Right Reserved',
      StringStyles.feedbackTitleStar : "問題反饋*",
      StringStyles.feedbackHint : "您可以在這裡輸入反饋內容",
      StringStyles.feedbackUploadPhoto : "上次截圖",
      StringStyles.feedbackContact : "聯繫方式",
      StringStyles.feedbackOptional : "(選填)",
      StringStyles.feedbackConnectQQ : "聯繫QQ群:704273239",
      StringStyles.feedbackConnectHint : "請輸入您的聯繫方式",
      StringStyles.feedbackSubmit : "提交",
      StringStyles.feedbackToast : "最多選擇4張喲~",
      StringStyles.feedbackSuccess : "反饋成功!",
      StringStyles.feedbackContent : "請填寫反饋內容!",
      StringStyles.pointsDetailTitle: "積分明細",
      StringStyles.settingTitle : "設置",
      StringStyles.settingLanguage : "語言",
      StringStyles.settingLanguageDefault : "跟隨系統",
      StringStyles.settingCache : "清除緩存",
      StringStyles.settingCacheSuccess : "清除緩存成功!",
      StringStyles.settingCacheFail : "清除緩存失敗!",
      StringStyles.settingExitLogin : "退出登錄",
      StringStyles.pointsNotifySuccess : "刷新成功",
      StringStyles.refreshNoData : "沒有更多數據啦",
      StringStyles.refreshError : "加載失敗!",
      StringStyles.refreshPull : "下拉加載",
      StringStyles.refreshHeaderIdle : "上拉刷新",
      StringStyles.refreshHeaderFreed : "釋放刷新",
      StringStyles.refreshHeaderFailed : "刷新失敗!",
      StringStyles.refreshHeaderSuccess : "刷新成功",
      StringStyles.collectTitle : "我的收藏",
      StringStyles.enter : "確認",
      StringStyles.quit : "取消",
      StringStyles.shareApplication : "實用博客APP推薦給您",
      StringStyles.shareHint : "博時,您的博客管家",
      StringStyles.shareSaveLocal : "保存到本地",
      StringStyles.shareBrowser : "瀏覽器打開",
      StringStyles.saveSuccess :  "保存成功",
      StringStyles.saveFail : "保存失敗",
      StringStyles.tabHome :  "首頁",
      StringStyles.tabSquare :  "廣場",
      StringStyles.tabAsk :  "問答",
      StringStyles.searchHint :  "搜索您想要的內容",
      StringStyles.search :  "搜索",
      StringStyles.searchHistory :  "搜索歷史",
      StringStyles.searchHotWord :  "熱搜榜",
      StringStyles.refreshEmpty : '沒有更多內容啦~',
      StringStyles.tabWechatPublic : '推薦一波優秀的技術公眾號~',
      StringStyles.tabWechatSwitch : '換一批  ',
      StringStyles.tabWechatDelete : '不感興趣',
      StringStyles.historyTitle : '瀏覽歷史',
      StringStyles.shareArticleTitle : '分享文章',
      StringStyles.shareArticleEnter : '分享到本應用',
      StringStyles.shareArticleHint : '給文章設置一個響亮的標題吧~',
      StringStyles.shareArticleEdit : '請輸入文章標題~',
      StringStyles.shareArticleSuccess :'分享成功',
      StringStyles.shareTitle : '我的分享',
      StringStyles.collectSuccess : '收藏成功',
      StringStyles.collectQuit : '取消收藏成功',
      StringStyles.notSupportLikes : "暫不支持點讚喲~"
    },
    'en_US' : {
      StringStyles.appName : 'BlogTime',
      StringStyles.loading : 'Loading...',
      StringStyles.loginAccountNameHint : 'Please enter the account name',
      StringStyles.loginAccountPwdHint : 'Please enter the password',
      StringStyles.loginAccountRePwdHint : 'Please enter the password again',
      StringStyles.loginButton : 'Login',
      StringStyles.loginSuccess : 'login successful',
      StringStyles.registerButton : 'Register',
      StringStyles.registerServiceTerms : 'I have read and agreed to the terms of service',
      StringStyles.registerAccountEmpty : 'Please enter user name～',
      StringStyles.registerAccountLength : 'At least 6 usernames～',
      StringStyles.registerPasswordEmpty : 'Please enter the password～',
      StringStyles.registerPasswordLength : 'Password at least 6 digits～',
      StringStyles.registerRePasswordEmpty : 'Please confirm the password～',
      StringStyles.registerRePasswordLength : 'Password at least 6 digits～',
      StringStyles.registerPasswordDiff : 'The two passwords entered are inconsistent～',
      StringStyles.registerNotServiceTerms : 'Please agree to the terms of service～',
      StringStyles.registerSuccess : 'Registration success～',
      StringStyles.homeComplex : 'comprehensive',
      StringStyles.homeProject : 'project',
      StringStyles.homeMy : 'mine',
      StringStyles.homeCollect : 'collect',
      StringStyles.homePoints : 'Points',
      StringStyles.homePartake : 'Share',
      StringStyles.homeHistory : 'History',
      StringStyles.homeUserInfo : 'Personal information',
      StringStyles.homeAbout : 'About',
      StringStyles.homeShare : 'Share',
      StringStyles.homeFeedback : 'Feedback',
      StringStyles.webEditHint : 'Say something...',
      StringStyles.webNotComment : 'Do not support commenting ye',
      StringStyles.userNickname : 'Nickname',
      StringStyles.userPointsRanking : 'Come and check the ranking list~',
      StringStyles.userRankingTitle : 'Points ranking',
      StringStyles.userRankingNumber : 'Rank',
      StringStyles.userRankingCoin : 'Accumulated points',
      StringStyles.aboutTitle : 'About Bosera',
      StringStyles.aboutVersion : 'Version:',
      StringStyles.aboutBuild : 'build:',
      StringStyles.aboutGithub: 'Github',
      StringStyles.aboutCSDN : 'CSDN',
      StringStyles.aboutSupport : 'Technical Support',
      StringStyles.aboutCopyright : 'Copyright@2021\nAll Right Reserved',
      StringStyles.feedbackTitleStar : "Feedback*",
      StringStyles.feedbackHint : "You can enter feedback content here",
      StringStyles.feedbackUploadPhoto : "Upload screenshot",
      StringStyles.feedbackContact : "Contact information",
      StringStyles.feedbackOptional : "(Optional)",
      StringStyles.feedbackConnectQQ : "Contact QQ group:704273239",
      StringStyles.feedbackConnectHint : "Please enter your contact information",
      StringStyles.feedbackSubmit : "Submit",
      StringStyles.feedbackToast : "Choose up to 4~",
      StringStyles.feedbackSuccess : "Feedback success!",
      StringStyles.feedbackContent : "Please fill in the feedback content!",
      StringStyles.pointsDetailTitle: "Points details",
      StringStyles.settingTitle : "Setting",
      StringStyles.settingLanguage : "Language",
      StringStyles.settingLanguageDefault : "Follow System",
      StringStyles.settingCache : "Clear cache",
      StringStyles.settingCacheSuccess : "Clear cache successfully!",
      StringStyles.settingCacheFail : "Failed to clear cache!",
      StringStyles.settingExitLogin : "Sign out",
      StringStyles.pointsNotifySuccess : "Refresh successfully",
      StringStyles.refreshNoData : "No more data",
      StringStyles.refreshError : "Failed to load!",
      StringStyles.refreshPull : "Drop-down loading",
      StringStyles.refreshHeaderIdle : "Pull up to refresh",
      StringStyles.refreshHeaderFreed : "Release refresh",
      StringStyles.refreshHeaderFailed : "Refresh failed!",
      StringStyles.refreshHeaderSuccess : "Refresh successfully",
      StringStyles.collectTitle : "My collection",
      StringStyles.enter : "Confirm",
      StringStyles.quit : "Quit",
      StringStyles.shareApplication : "Practical blog app recommended to you",
      StringStyles.shareHint : "Bosera, your blog steward",
      StringStyles.shareSaveLocal : "Save to local",
      StringStyles.shareBrowser : "Browser opens",
      StringStyles.saveSuccess :  "Saved successfully",
      StringStyles.saveFail : "Saved fail",
      StringStyles.tabHome :  "FrontPage",
      StringStyles.tabSquare :  "Square",
      StringStyles.tabAsk :  "Q&A",
      StringStyles.searchHint :  "Search what you want",
      StringStyles.search :  "Search",
      StringStyles.searchHistory :  "Search history",
      StringStyles.searchHotWord :  "Hot search list",
      StringStyles.refreshEmpty : 'No more content~',
      StringStyles.tabWechatPublic : 'Recommend a wave of excellent technical public accounts~',
      StringStyles.tabWechatSwitch : 'Change batch  ',
      StringStyles.tabWechatDelete : 'not interested',
      StringStyles.historyTitle : 'Browsing History',
      StringStyles.shareArticleTitle : 'Share articles',
      StringStyles.shareArticleEnter : 'Share to this app',
      StringStyles.shareArticleHint : 'Give the article a loud title~',
      StringStyles.shareArticleEdit : 'Please enter the title of the article~',
      StringStyles.shareArticleSuccess :'Successful sharing',
      StringStyles.shareTitle : 'My share',
      StringStyles.collectSuccess : 'Collection success',
      StringStyles.collectQuit : 'Unfavorite successfully',
      StringStyles.notSupportLikes : "Don't support likes at the moment~"
    }
  };

}


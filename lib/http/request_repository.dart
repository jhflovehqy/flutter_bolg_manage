
import 'package:blog/http/http_request.dart';
import 'package:blog/http/request.dart';
import 'package:blog/http/request_api.dart';
import 'package:blog/model/collect_model.dart';
import 'package:blog/model/points_detail.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/model/request_ranking.dart';
import 'package:blog/model/request_register.dart';
import 'package:blog/util/save/sp_util.dart';

typedef SuccessOver<T> = Function(T data , bool over);


/// @class : RequestRepository
/// @date : 2021/08/25
/// @name : jhf
/// @description : 请求仓库
class RequestRepository{


  ///登录请求
  /// [account]账号
  /// [password]密码
  /// [password]重复密码
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  register(String account , String password,String rePassword ,{
    Success<UserEntity>? success,
    Fail? fail,
  } ){
    Request.post<dynamic>(RequestApi.apiRegister, {
      "username": account,
      "password": password,
      "repassword": rePassword
    }, success: (data) {
      var registerInfo = UserEntity.fromJson(data);
      registerInfo.password = password;
      SpUtil.putUserInfo(registerInfo);
      if(success != null){
        success(registerInfo);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }


  ///登录请求
  /// [account]账号
  /// [password]密码
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  login(String account , String password,{
    Success<UserEntity>? success,
    Fail? fail,
  }){
    Request.post<dynamic>(RequestApi.apiLogin, {
      "username": account,
      "password": password
    }, success: (data) {
      var loginInfo = UserEntity.fromJson(data);
      loginInfo.password = password;
      SpUtil.putUserInfo(loginInfo);
      if(success != null){
        success(loginInfo);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }



  ///收藏|取消收藏 文章接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  collectArticle(int id , {
    bool isCollect = false,
    Success<bool>? success,
    Fail? fail,
  }){
    var api = isCollect ? RequestApi.apiUnCollect :RequestApi.apiCollect;
    Request.post<dynamic>(api.replaceFirst(RegExp('id'), '$id'), {} , dialog: false, success: (data) {
      if(success != null){
        success(true);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }

  ///请求项目列表接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  requestTabModule(int page , {
    SuccessOver<List<ProjectDetail>>? success,
    Fail? fail,
  }){
    Request.get<dynamic>(RequestApi.apiProject.replaceFirst(RegExp('page'), '$page'), {},dialog: false, success: (data) {
      ProjectPage pageData = ProjectPage.fromJson(data);
      var list = pageData.datas.map((value) {
        return ProjectDetail.fromJson(value);
      }).toList();
      if(success != null){
        success(list , pageData.over);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }



  ///请求积分排行榜接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  rankingPoints(int page , {
    SuccessOver<List<Ranking>>? success,
    Fail? fail,
  }){
    Request.get<dynamic>(RequestApi.apiRanking.replaceFirst(RegExp('page'), '$page'), {} , dialog: false, success: (data) {
      ///先解析外层分页
      ProjectPage pageData = ProjectPage.fromJson(data);
      ///数组解析
      var list = pageData.datas.map((value) {
        return Ranking.fromJson(value);
      }).toList();
      if(success != null){
        success(list , pageData.over);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }


  ///请求积分排行榜接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  pointsDetail(int page , {
    SuccessOver<List<Points>>? success,
    Fail? fail,
  }){
    Request.get<dynamic>(RequestApi.apiPoints.replaceFirst(RegExp('page'), '$page'), {} , dialog: false, success: (data) {
      ///先解析外层分页
      ProjectPage pageData = ProjectPage.fromJson(data);
      ///数组解析
      var list = pageData.datas.map((value) {
        return Points.fromJson(value);
      }).toList();
      if(success != null){
        success(list , pageData.over);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }

  ///我收藏的文章列表
  ///此处page 必须减去1，此处从0开始
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  collectDetail(int page , {
    SuccessOver<List<CollectDetail>>? success,
    Fail? fail,
  }){
    Request.get<dynamic>(RequestApi.apiCollectDetail.replaceFirst(RegExp('page'), '${page - 1}'), {},dialog: false, success: (data) {
      ProjectPage pageData = ProjectPage.fromJson(data);
      var list = pageData.datas.map((value) {
        return CollectDetail.fromJson(value);
      }).toList();
      if(success != null){
        success(list , pageData.over);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }



  ///退出登录
  exitLogin({
    Success<bool>? success,
    Fail? fail,
  }){
    Request.post<dynamic>(RequestApi.apiLogout , {} , dialog: false, success: (data) {
      if(success != null){
        success(true);
      }
    }, fail: (code, msg) {
      if(fail != null){
        fail(code , msg);
      }
    });
  }


}
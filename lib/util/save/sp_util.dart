import 'dart:convert';

import 'package:blog/model/language.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/model/request_register.dart';
import 'package:blog/util/save/sp_key.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// @class : SpUtil
/// @date : 2021/08/19
/// @name : jhf
/// @description :键值对存储
class SpUtil {


  ///更新用户信息，需要保存密码
  ///[userInfo] 用户信息
  static notifyUserInfo(UserEntity userInfo){
    var oldInfo = getUserInfo();
    if(oldInfo != null){
      userInfo.password = oldInfo.password;
    }
    SpUtil.deleteUserInfo();
    SpUtil.putUserInfo(userInfo);
  }

  ///删除存储用户信息
  static deleteUserInfo() {
    Get.find<SharedPreferences>().remove(SPKey.keyUserInfo);
  }

  ///存储用户信息
  ///[userInfo] 用户信息
  static putUserInfo(UserEntity userInfo) {
    Get.find<SharedPreferences>()
        .setString(SPKey.keyUserInfo, jsonEncode(userInfo.toJson()));
  }

  ///获取用户信息
  ///[UserEntity] 用户信息
  static UserEntity? getUserInfo() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getString(SPKey.keyUserInfo);
      if (json == null) {
        return null;
      } else {
        return UserEntity.fromJson(jsonDecode(json));
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }


  ///存储语言
  ///[Language] 语言
  static updateLanguage(Language language) {
    Get.find<SharedPreferences>().remove(SPKey.language);
    Get.find<SharedPreferences>()
        .setString(SPKey.language, jsonEncode(language.toJson()));
  }

  ///获取语言选项
  ///[Language] 语言
  static Language? getLanguage() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getString(SPKey.language);
      if (json == null) {
        return null;
      } else {
        return Language.fromJson(jsonDecode(json));
      }
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }


  /// 搜索历史记录
  /// [word] 搜索记录
  static saveSearchHistory(String word) {
    var history = getSearchHistory();
    if(history.contains(word)){
      return;
    }
    history.insert(0 , word);
    Get.find<SharedPreferences>()
        .setStringList(SPKey.searchHistory, history);
  }

  ///清空搜索历史
  static void deleteSearchHistory(){
    Get.find<SharedPreferences>().remove(SPKey.searchHistory);
  }

  ///获取搜索历史记录
  static List<String> getSearchHistory() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getStringList(SPKey.searchHistory);
      if (json == null) {
        return [];
      } else {
        return json;
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }



  /// 浏览历史记录
  /// [detail] 浏览记录
  static saveBrowseHistory(ProjectDetail detail) {
    var history = getBrowseHistory();
    for (var element in history) {
      Map<String, dynamic> map = jsonDecode(element);
      var convert = ProjectDetail.fromJson(map);
      if(convert.id == detail.id){
        return;
      }
    }
    var toJson = jsonEncode(detail.toJson());
    history.insert(0 , toJson);
    Get.find<SharedPreferences>()
        .setStringList(SPKey.browseHistory, history);
  }

  ///浏览记录JSON转换为Model之后的数据
  static List<ProjectDetail> getBrowseHistoryModel() {
    var data = <ProjectDetail>[];
    var history = getBrowseHistory();
    for (var element in history) {
      var map = jsonDecode(element);
      var convert = ProjectDetail.fromJson(map);
      data.add(convert);
    }
    return data;
  }

  ///浏览记录长度
  static int getBrowseHistoryLength() {
    return getBrowseHistory().length;
  }


  ///获取浏览历史记录
  static List<String> getBrowseHistory() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getStringList(SPKey.browseHistory);
      if (json == null) {
        return [];
      } else {
        return json;
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }


}




/// @class : WechatPublic
/// @date : 2021/9/23
/// @name : jhf
/// @description : 微信公众号信息
class WechatPublic{


  ///公众号ID
  int courseId = 0;
  ///ID
  int id = 0;
  ///是否显示
  int order = 0;
  ///类型
  int visible = 0;
  ///公众号名称
  String name = '';
  ///公众号名称
  int parentChapterId = 0;
  ///是否置顶
  bool userControlSetTop = false;
  ///子类
  dynamic children;



  WechatPublic.fromJson(Map<dynamic, dynamic> json) {
    courseId = json["courseId"];
    parentChapterId = json["parentChapterId"];
    id = json["id"];
    userControlSetTop = json["userControlSetTop"];
    order = json["order"];
    visible = json["visible"];
    name = json["name"];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["courseId"] = courseId;
    data["parentChapterId"] = parentChapterId;
    data["id"] = id;
    data["userControlSetTop"] = userControlSetTop;
    data["order"] = order;
    data["visible"] = visible;
    data["name"] = name;
    return data;
  }
}





/// @class : Banner
/// @date : 2021/9/2
/// @name : jhf
/// @description : Banner轮播图
class Banners {

  ///描述
  String desc = "";
  ///ID
  int id = 0;
  ///图片路径
  String imagePath = "";
  ///是否显示
  int isVisible = 0;
  int order = 0;
  ///标题
  String title = '';
  ///类型
  int type = 0;
  ///对应链接
  String url = "";
  ///是否为本地图片
  bool isAssets = false;


  Banners({
    required this.imagePath,
    required this.isAssets,
  });


  Banners.fromJson(Map<dynamic, dynamic> json) {
    desc = json["desc"];
    id = json["id"];
    imagePath = json["imagePath"];
    isVisible = json["isVisible"];
    order = json["order"];
    title = json["title"];
    type = json["type"];
    url = json["url"];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["desc"] = desc;
    data["id"] = id;
    data["imagePath"] = imagePath;
    data["isVisible"] = isVisible;
    data["order"] = order;
    data["title"] = title;
    data["type"] = type;
    data["url"] = url;
    return data;
  }
}

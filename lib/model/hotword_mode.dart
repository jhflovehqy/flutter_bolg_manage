




/// @class : HotWord
/// @date : 2021/9/6
/// @name : jhf
/// @description : 搜索热词
class HotWord {

  ///链接
  String link = "";
  ///ID
  int id = 0;
  ///热词名称
  String name = "";
  int order = 0;
  int visible = 0;



  HotWord({
    required this.link,
    required this.id,
    required this.name,
    required this.order,
    required this.visible,
  });


  HotWord.fromJson(Map<dynamic, dynamic> json) {
    link = json["link"];
    id = json["id"];
    name = json["name"];
    visible = json["visible"];
    order = json["order"];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["link"] = link;
    data["id"] = id;
    data["name"] = name;
    data["visible"] = visible;
    data["order"] = order;
    return data;
  }
}

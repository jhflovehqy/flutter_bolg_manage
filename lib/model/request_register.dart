


/// @class : UserEntity
/// @date : 2021/08/23
/// @name : jhf
/// @description : 用户信息
class UserEntity {

  bool admin = false;
  List<dynamic> chapterTops = [];
  int coinCount = 0;
  List<dynamic> collectIds = [];
  String email = '';
  String icon = '';
  int id = 0;
  String nickname = '';
  String password = '';
  String publicName = '';
  String token = '';
  int type = 0;
  String username = '';

  UserEntity({
    required this.admin,
    required this.chapterTops,
    required this.coinCount,
    required this.collectIds,
    required this.email,
    required this.icon,
    required this.id,
    required this.nickname,
    required this.password,
    required this.publicName,
    required this.token,
    required this.type,
    required this.username,
  });

  UserEntity.fromJson(Map<dynamic, dynamic> json) {
    admin = json["admin"];
    coinCount = json["coinCount"]?.toInt();
    email = json["email"].toString();
    icon = json["icon"].toString();
    id = json["id"]?.toInt();
    nickname = json["nickname"].toString();
    password = json["password"].toString();
    publicName = json["publicName"].toString();
    token = json["token"].toString();
    type = json["type"].toInt();
    username = json["username"].toString();
    collectIds = json['collectIds'];
    chapterTops = json['chapterTops'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["admin"] = admin;
    data["coinCount"] = coinCount;
    data["email"] = email;
    data["icon"] = icon;
    data["id"] = id;
    data["nickname"] = nickname;
    data["password"] = password;
    data["publicName"] = publicName;
    data["token"] = token;
    data["type"] = type;
    data["username"] = username;
    data["collectIds"] = collectIds;
    data["chapterTops"] = chapterTops;
    return data;
  }
}

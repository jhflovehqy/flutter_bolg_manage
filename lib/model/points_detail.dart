


/// @class : Points
/// @date : 2021/08/23
/// @name : jhf
/// @description : 积分明细
class Points {

  int coinCount = 0;
  int date = 0;
  String desc = "";
  int id = 0;
  String reason = '';
  int type = 0;
  int userId = 0;
  String userName = '';

  Points({
    required this.coinCount,
    required this.date,
    required this.desc,
    required this.id,
    required this.reason,
    required this.type,
    required this.userId,
    required this.userName,
  });

  Points.fromJson(Map<dynamic, dynamic> json) {
    coinCount = json["coinCount"];
    date = json["date"];
    desc = json["desc"];
    id = json["id"];
    reason = json["reason"];
    type = json["type"];
    userId = json["userId"];
    userName = json["userName"];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["coinCount"] = coinCount;
    data["date"] = date;
    data["desc"] = desc;
    data["id"] = id;
    data["reason"] = reason;
    data["type"] = type;
    data["userId"] = userId;
    data["username"] = userName;
    return data;
  }
}

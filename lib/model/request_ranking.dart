


/// @class : Ranking
/// @date : 2021/08/23
/// @name : jhf
/// @description : 积分排行榜
class Ranking {

  int coinCount = 0;
  int level = 0;
  String nickname = "";
  String rank = "";
  int userId = 0;
  String username = '';


  Ranking({
    required this.coinCount,
    required this.level,
    required this.nickname,
    required this.rank,
    required this.userId,
    required this.username,
  });

  Ranking.fromJson(Map<dynamic, dynamic> json) {
    coinCount = json["coinCount"];
    level = json["level"];
    nickname = json["nickname"];
    rank = json["rank"];
    userId = json["userId"];
    username = json["username"];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["coinCount"] = coinCount;
    data["level"] = level;
    data["nickname"] = nickname;
    data["rank"] = rank;
    data["userId"] = userId;
    data["username"] = username;
    return data;
  }
}

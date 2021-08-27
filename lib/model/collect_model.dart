
/// @class : CollectDetail
/// @date : 2021/08/27
/// @name : jhf
/// @description : 收藏详情
class CollectDetail{

  String author = "";
  int chapterId = 0;
  String chapterName = "";
  int courseId = 0;
  String desc = "";
  String envelopePic = "";
  int id = 0;
  String link = "";
  String niceDate = "";
  String origin = "";
  int originId = 0;
  int publishTime = 0;
  String title = "";
  int userId = 0;
  int visible = 0;
  int zan = 0;



  CollectDetail({
    required this.author,
    required this.chapterId,
    required this.chapterName,
    required this.courseId,
    required this.desc,
    required this.envelopePic,
    required this.id,
    required this.link,
    required this.niceDate,
    required this.origin,
    required this.publishTime,
    required this.title,
    required this.originId,
    required this.userId,
    required this.visible,
    required this.zan,
  });

  CollectDetail.fromJson(Map<dynamic, dynamic> json) {
    author = json['author'];
    chapterId = json['chapterId'];
    chapterName = json['chapterName'];
    courseId = json['courseId'];
    desc = json['desc'];
    envelopePic = json['envelopePic'];
    id = json['id'];
    link = json['link'];
    niceDate = json['niceDate'];
    origin = json['origin'];
    publishTime = json['publishTime'];
    title = json['title'];
    originId = json['originId'];
    userId = json['userId'];
    visible = json['visible'];
    zan = json['zan'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['chapterId'] = chapterId;
    data['chapterName'] = chapterName;
    data['courseId'] = courseId;
    data['desc'] = desc;
    data['envelopePic'] = envelopePic;
    data['id'] = id;
    data['link'] = link;
    data['niceDate'] = niceDate;
    data['origin'] = origin;
    data['publishTime'] = publishTime;
    data['title'] = title;
    data['type'] = originId;
    data['userId'] = userId;
    data['visible'] = visible;
    data['zan'] = zan;
    return data;
  }
}

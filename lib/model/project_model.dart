


/// @class : ProjectPage
/// @date : 2021/08/23
/// @name : jhf
/// @description : 分页数据
class ProjectPage {

  ///当前页数
  int curPage = 0;
  ///数据
  List datas = [];
  ///偏移
  int offset = 0;
  ///是否为最后一页
  bool over = false;
  ///页数长度
  int pageCount = 0;
  ///当前页大小
  int size = 0;
  ///数据总大小
  int total = 0;

  ProjectPage({
    required this.curPage,
    required this.datas,
    required this.offset,
    required this.over,
    required this.pageCount,
    required this.size,
    required this.total,
  });

  ProjectPage.fromJson(Map<dynamic, dynamic> json) {
    curPage = json["curPage"];
    offset = json["offset"];
    over = json["over"];
    pageCount = json["pageCount"];
    size = json["size"];
    total = json["total"];
    datas = json['datas'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["curPage"] = curPage;
    data["datas"] = datas;
    data["offset"] = offset;
    data["over"] = over;
    data["pageCount"] = pageCount;
    data["size"] = size;
    data["total"] = total;
    return data;
  }
}

class ProjectTag{
  ///分类名称
  String name = "";
  ///URL
  String url = "";

  ProjectTag({
    required this.name,
    required this.url,
  });

  ProjectTag.fromJson(Map<dynamic, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

/// @class : ProjectDetail
/// @date : 2021/08/23
/// @name : jhf
/// @description : 项目详情
class ProjectDetail{

  String apkLink = "";
  int audit = 0;
  String author = "";
  bool canEdit = false;
  int chapterId = 0;
  String chapterName = "";
  bool collect = false;
  int courseId = 0;
  String desc = "";
  String descMd = "";
  String envelopePic = "";
  bool fresh = false;
  String host = "";
  int id = 0;
  String link = "";
  String niceDate = "";
  String niceShareDate = "";
  String origin = "";
  String prefix = "";
  String projectLink = "";
  int publishTime = 0;
  int realSuperChapterId = 0;
  int selfVisible = 0;
  int shareDate = 0;
  String shareUser = "";
  int superChapterId = 0;
  String superChapterName = "";
  List tags = [];
  String title = "";
  int type = 0;
  int userId = 0;
  int visible = 0;
  int zan = 0;

  ProjectDetail({
    required this.apkLink,
    required this.audit,
    required this.author,
    required this.canEdit,
    required this.chapterId,
    required this.chapterName,
    required this.collect,
    required this.courseId,
    required this.desc,
    required this.descMd,
    required this.envelopePic,
    required this.fresh,
    required this.host,
    required this.id,
    required this.link,
    required this.niceDate,
    required this.niceShareDate,
    required this.origin,
    required this.prefix,
    required this.projectLink,
    required this.publishTime,
    required this.realSuperChapterId,
    required this.selfVisible,
    required this.shareDate,
    required this.shareUser,
    required this.superChapterId,
    required this.superChapterName,
    required this.tags,
    required this.title,
    required this.type,
    required this.userId,
    required this.visible,
    required this.zan,
  });

  ProjectDetail.fromJson(Map<dynamic, dynamic> json) {
    apkLink = json['apkLink'];
    audit = json['audit'];
    author = json['author'];
    canEdit = json['canEdit'];
    chapterId = json['chapterId'];
    chapterName = json['chapterName'];
    collect = json['collect'];
    courseId = json['courseId'];
    desc = json['desc'];
    descMd = json['descMd'];
    envelopePic = json['envelopePic'];
    fresh = json['fresh'];
    host = json['host'];
    id = json['id'];
    link = json['link'];
    niceDate = json['niceDate'];
    niceShareDate = json['niceShareDate'];
    origin = json['origin'];
    prefix = json['prefix'];
    projectLink = json['projectLink'];
    publishTime = json['publishTime'];
    realSuperChapterId = json['realSuperChapterId'];
    selfVisible = json['selfVisible'];
    shareDate = json['shareDate'] ?? 0;
    shareUser = json['shareUser'];
    superChapterId = json['superChapterId'];
    superChapterName = json['superChapterName'];
    tags = json['tags'];
    title = json['title'];
    type = json['type'];
    userId = json['userId'];
    visible = json['visible'];
    zan = json['zan'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apkLink'] = apkLink;
    data['audit'] = audit;
    data['author'] = author;
    data['canEdit'] = canEdit;
    data['chapterId'] = chapterId;
    data['chapterName'] = chapterName;
    data['collect'] = collect;
    data['courseId'] = courseId;
    data['desc'] = desc;
    data['descMd'] = descMd;
    data['envelopePic'] = envelopePic;
    data['fresh'] = fresh;
    data['host'] = host;
    data['id'] = id;
    data['link'] = link;
    data['niceDate'] = niceDate;
    data['niceShareDate'] = niceShareDate;
    data['origin'] = origin;
    data['prefix'] = prefix;
    data['projectLink'] = projectLink;
    data['publishTime'] = publishTime;
    data['realSuperChapterId'] = realSuperChapterId;
    data['selfVisible'] = selfVisible;
    data['shareDate'] = shareDate;
    data['shareUser'] = shareUser;
    data['superChapterId'] = superChapterId;
    data['superChapterName'] = superChapterName;
    data['tags'] = tags;
    data['title'] = title;
    data['type'] = type;
    data['userId'] = userId;
    data['visible'] = visible;
    data['zan'] = zan;
    return data;
  }
}

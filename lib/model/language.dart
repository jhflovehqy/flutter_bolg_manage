

import 'package:blog/res/strings.dart';
import 'package:get/get.dart';

/// @class : Language
/// @date : 2021/08/26
/// @name : jhf
/// @description :語言
class Language{

  String name = '';
  String language = '';
  String country = '';
  bool isSelect = false;


  Language(this.name, this.language, this.country , {this.isSelect = false});

  Language.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        language = json['language'],
        country = json['country'],
        isSelect = json['isSelect'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'language': language,
    'country': country,
    'isSelect': isSelect,
  };


}

///新增语言要在此处手动增加
final languageList = [
  Language(StringStyles.settingLanguageDefault.tr, '', ''),
  Language('简体中文', 'zh', 'CN'),
  Language('繁體中文(香港)', 'zh', 'HK'),
  Language('繁體中文(台灣)', 'zh', 'TW'),
  Language('English', 'zh', 'US'),
];
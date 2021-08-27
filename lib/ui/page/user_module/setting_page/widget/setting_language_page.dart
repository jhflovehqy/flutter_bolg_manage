import 'package:blog/model/language.dart';
import 'package:blog/res/colors.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/locale_util.dart';
import 'package:blog/util/save/sp_util.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:blog/widget/over_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : SettingLanguagePage
/// @date : 2021/08/25
/// @name : jhf
/// @description :设置语言页面
class SettingLanguagePage extends StatefulWidget {
  const SettingLanguagePage({Key? key}) : super(key: key);

  @override
  State<SettingLanguagePage> createState() => _SettingLanguagePageState();
}

class _SettingLanguagePageState extends State<SettingLanguagePage> {
  ///应用支持的语言
  List<Language> language = languageList;

  @override
  void initState() {
    ///读取语言存储
    var languageModel = SpUtil.getLanguage();
    if (languageModel == null) {
      language[0].isSelect = true;
    } else {
      ///找到当前选中的语言
      language.forEach((item) {
        if (item.name == languageModel.name) {
          item.isSelect = true;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            ToolBar(
              title: StringStyles.settingLanguage.tr,
            ),
            DividerStyle.divider1Half,
            ScrollConfiguration(
                behavior: OverScrollBehavior(),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: language.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        onTap: () {
                          ///更新语言
                          language
                            ..forEach((item) {
                              item.isSelect = false;
                            })
                            ..[index].isSelect = true;
                          SpUtil.updateLanguage(language[index]);
                          LocaleOptions.updateLocale(language[index]);
                          Get.back();
                        },
                        title: Text(language[index].name),
                        trailing: Visibility(
                          visible: language[index].isSelect,
                          child: const Icon(
                            Icons.radio_button_checked,
                            color: ColorStyle.color_24CF5F,
                            size: 20,
                          ),
                        ));
                  },
                ))
          ],
        ),
      ),
    );
  }
}

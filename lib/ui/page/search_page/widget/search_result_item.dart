import 'package:blog/model/project_model.dart';
import 'package:blog/res/decoration_style.dart';
import 'package:blog/res/style.dart';
import 'package:blog/util/html_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';

/// @class : SearchPage
/// @date : 2021/9/7
/// @name : jhf
/// @description :搜索页面 搜索结果列表Item
class SearchResultItem extends StatelessWidget {
  ///列表数据
  ProjectDetail item;

  SearchResultItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var content = HtmlUtils.html2Title(item.title);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: DecorationStyle.colorShadowBorderStand(),
      child: Column(
        children: [
          Html(
            data: content,
            style: {
              'font': Style(
                  fontSize: const FontSize(15), fontWeight: FontWeight.w700)
            },
          ),
          Visibility(
            visible: item.desc.isNotEmpty,
            child: Container(
               margin: const EdgeInsets.only(bottom: 6),
               child: Html(data: item.desc)),
          ),
          Box.vBox3,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Box.hBox6,
              Text(
                item.superChapterName,
                style: Styles.style_616169_11,
              ),
              Box.hBox10,
              const Text(
                '|',
                style: Styles.style_9F9EA6_11,
              ),
              Box.hBox10,
              Text(
                item.shareUser.isEmpty ? item.author : item.shareUser,
                style: Styles.style_9F9EA6_11,
              ),
              Box.hBox10,
              Text(item.niceDate, style: Styles.style_9F9EA6_11),
            ],
          ),
          Box.vBox3,
        ],
      ),
    );
  }
}

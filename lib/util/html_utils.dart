





import 'package:flutter/cupertino.dart';

/// @class : HtmlUtils
/// @date : 2021/9/7
/// @name : jhf
/// @description :HTML工具类
class HtmlUtils {


  static String html2Title(String html){
    html = html.replaceAll('<em class=\'highlight\'>', '<font color="#f00">');
    html = html.replaceAll('</em>', '</font>');
    html = '<font color="#000">$html</font>';
    debugPrint("content=> $html");
    return html;
  }


}
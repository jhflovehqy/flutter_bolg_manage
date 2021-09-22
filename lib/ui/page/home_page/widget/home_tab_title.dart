import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// @class : TabTitleIcon
/// @date : 2021/08/19
/// @name : jhf
///
/// @description :文字加图标的Tab
class TabTitleIcon extends StatelessWidget {
  String title = "";
  IconData? icon;

  TabTitleIcon({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: title,
      iconMargin: const EdgeInsets.all(4),
      icon: Icon(
        icon,
      ),
    );
  }
}

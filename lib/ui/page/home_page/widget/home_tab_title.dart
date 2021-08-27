
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabTitleIcon extends StatelessWidget{

  String title = "";
  IconData? icon;

  TabTitleIcon({
    Key? key ,
    required this.title ,
    this.icon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Tab(
      text: title,
      iconMargin: const EdgeInsets.all(5),
      icon: Icon(
        icon,
      ),
    );
  }

}
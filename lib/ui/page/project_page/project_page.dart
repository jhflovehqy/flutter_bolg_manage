import 'package:blog/base/get/get_save_state_view.dart';
import 'package:blog/ui/page/project_page/project_controller.dart';
import 'package:blog/ui/page/project_page/widget/project_list_item.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';

/// @class : ProjectPage
/// @date : 2021/08/23
/// @name : jhf
/// @description :项目 View层
class ProjectPage extends GetSaveView<ProjectController> {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: RefreshWidget<ProjectController>(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: controller.projectData.length,
          itemBuilder: (BuildContext context, int index) {
            return ProjectListItem(
                controller.projectData[index]
            );
          },
        ),
      ),
    );
  }
}

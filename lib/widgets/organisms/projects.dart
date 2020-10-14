import 'package:flutter/material.dart';
import 'package:portfolio/domain/interfaces/url_launcher_service.dart';
import 'package:portfolio/mixin/url_launcher.dart';
import 'package:portfolio/widgets/atoms/play_store_button.dart';
import 'package:portfolio/widgets/molecules/hello_world_details.dart';
import 'package:portfolio/widgets/molecules/hello_world_project.dart';
import 'package:portfolio/widgets/molecules/project_wrapper.dart';
import 'package:portfolio/widgets/molecules/projects_container.dart';

class ProjectsWidget extends StatelessWidget with UrlLauncherMixin {
  final IUrlLauncherService service;
  final double height;

  const ProjectsWidget(
    this.service, {
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectsContainer(
      height: height,
      children: [
        ProjectWrapper(
          projectChild: const HelloWorldProject(),
          detailsChildren: [
            const HelloWorldDetails(),
            const SizedBox(height: 15),
            PlayStoreButton(onPressed: helloWorldProject),
          ],
        )
      ],
    );
  }
}

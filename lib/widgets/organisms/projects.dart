import 'package:flutter/material.dart';
import 'package:portfolio/domain/interfaces/url_launcher_service.dart';
import 'package:portfolio/mixin/projects.dart';
import 'package:portfolio/mixin/url_launcher.dart';
import 'package:portfolio/widgets/atoms/app_store_button.dart';
import 'package:portfolio/widgets/atoms/details_button.dart';
import 'package:portfolio/widgets/atoms/play_store_button.dart';
import 'package:portfolio/widgets/molecules/flix_project.dart';
import 'package:portfolio/widgets/molecules/hello_world_project.dart';
import 'package:portfolio/widgets/molecules/multibom_lavras_project.dart';
import 'package:portfolio/widgets/molecules/project_wrapper.dart';
import 'package:portfolio/widgets/molecules/projects_container.dart';

class ProjectsWidget extends StatelessWidget
    with ProjectsMixin, UrlLauncherMixin {
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
            DetailsButton(
              onPressed: () => showHelloWorldDetails(context),
            ),
            const SizedBox(height: 15),
            PlayStoreButton(onPressed: helloWorldProject),
          ],
        ),
        const SizedBox(width: 15),
        ProjectWrapper(
          projectChild: const MultibomLavrasProject(),
          detailsChildren: [
            DetailsButton(
              onPressed: () => showMultibomLavrasDetails(context),
            ),
            const SizedBox(height: 15),
            PlayStoreButton(onPressed: multibomLavrasProject)
          ],
        ),
        const SizedBox(width: 15),
        ProjectWrapper(
          projectChild: const FlixProject(),
          detailsChildren: [
            DetailsButton(
              onPressed: () => showFlixDetails(context),
            ),
            const SizedBox(height: 15),
            PlayStoreButton(onPressed: flixAndroid),
            const SizedBox(height: 15),
            AppStoreButton(onPressed: flixIos)
          ],
        )
      ],
    );
  }
}

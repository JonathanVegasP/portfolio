import 'package:flutter/material.dart';
import 'package:portfolio/core/tools/dependency_injection.dart';
import 'package:portfolio/mixin/scroll_content_mixin.dart';
import 'package:portfolio/widgets/atoms/app_bar.dart';
import 'package:portfolio/widgets/atoms/dismiss_keyboard.dart';
import 'package:portfolio/widgets/atoms/text_button.dart';
import 'package:portfolio/widgets/molecules/drawer.dart';
import 'package:portfolio/widgets/molecules/social_buttons.dart';

class HomeHeader extends StatelessWidget with ScrollContentMixin {
  final Widget child;
  final ScrollController controller;
  final double height;
  final double width;

  const HomeHeader({
    Key key,
    @required this.controller,
    @required this.height,
    @required this.child,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarWidget(
          width: width,
          actions: [
            TextButtonWidget(
              onPressed: goToHome,
              text: 'HOME',
              color: Colors.white,
            ),
            TextButtonWidget(
              onPressed: goToAbout,
              text: 'ABOUT',
              color: Colors.white,
            ),
            TextButtonWidget(
              onPressed: goToProjects,
              text: 'PROJECTS',
              color: Colors.white,
            ),
          ],
        ),
        drawer: width < 1024
            ? DrawerWidget(controller: controller, height: height)
            : null,
        floatingActionButton:  SocialButtons(service()),
        body: child,
      ),
    );
  }
}

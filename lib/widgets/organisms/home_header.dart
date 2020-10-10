import 'package:flutter/material.dart';
import 'package:portfolio/mixin/scroll_content_mixin.dart';
import 'package:portfolio/widgets/atoms/app_bar.dart';
import 'package:portfolio/widgets/atoms/dismiss_keyboard.dart';
import 'package:portfolio/widgets/atoms/text_button.dart';
import 'package:portfolio/widgets/molecules/drawer.dart';

class HomeHeader extends StatelessWidget with ScrollContentMixin {
  final Widget child;
  final ScrollController controller;
  final double height;
  final double width;

  const HomeHeader({
    Key key,
    this.controller,
    this.height,
    this.child,
    this.width,
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
              onPressed: goToProjects,
              text: 'PROJECTS',
              color: Colors.white,
            ),
          ],
        ),
        drawer: width < 1024
            ? DrawerWidget(controller: controller, height: height)
            : null,
        body: child,
      ),
    );
  }
}

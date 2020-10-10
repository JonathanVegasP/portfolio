import 'package:flutter/material.dart';
import 'package:portfolio/domain/interfaces/scroll_content.dart';
import 'package:portfolio/mixin/home_header.dart';
import 'package:portfolio/widgets/atoms/app_bar.dart';
import 'package:portfolio/widgets/atoms/dismiss_keyboard.dart';
import 'package:portfolio/widgets/atoms/text_button.dart';
import 'package:portfolio/widgets/molecules/drawer.dart';

class HomeHeader extends ScrollContent with HomeHeaderMixin {
  final Widget child;

  const HomeHeader({
    Key key,
    Size size,
    ScrollController controller,
    this.child,
  }) : super(key: key, size: size, controller: controller);

  @override
  Widget build(BuildContext context) {
    final width = size.width;
    final height = size.height;
    return DismissKeyboard(
      child: Scaffold(
        appBar: AppBarWidget(
          height: height,
          width: width,
          actions: [
            TextButtonWidget(onPressed: goToHome, text: 'HOME'),
            TextButtonWidget(onPressed: goToProjects, text: 'PROJECTS'),
          ],
        ),
        drawer: DrawerWidget(),
        body: child,
      ),
    );
  }
}

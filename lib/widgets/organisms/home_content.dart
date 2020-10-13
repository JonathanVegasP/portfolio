import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/parallax_scroll_effect.dart';
import 'package:portfolio/widgets/molecules/about.dart';
import 'package:portfolio/widgets/molecules/profile.dart';

class HomeContent extends StatelessWidget {
  final ScrollController controller;
  final double height;
  final double width;
  final Widget child;

  const HomeContent({
    Key key,
    @required this.controller,
    @required this.height,
    @required this.width,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParallaxScrollEffect(
      parallaxChild: SizedBox(
        height: height,
        width: width,
        child: const ProfileWidget(),
      ),
      children: [
        SizedBox(
          height: height,
          width: width,
          child: AboutWidget(width: width),
        ),
        SizedBox(
          height: height,
          width: width,
          child: child,
        ),
      ],
      height: height,
      controller: controller,
    );
  }
}

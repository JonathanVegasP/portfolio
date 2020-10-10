import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';
import 'package:portfolio/widgets/atoms/background_image.dart';
import 'package:portfolio/widgets/atoms/parallax_scroll_effect.dart';
import 'package:portfolio/widgets/molecules/profile.dart';

class HomeContent extends StatelessWidget {
  final ScrollController controller;
  final double height;
  final double width;

  const HomeContent({
    Key key,
    this.controller,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParallaxScrollEffect(
      parallaxChild: SizedBox(
        height: height,
        width: width,
        child: const BackgroundGradient(
          child: Center(
            child: ProfileWidget(),
          ),
        ),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: const BackgroundImage(),
      ),
      height: height,
      controller: controller,
    );
  }
}

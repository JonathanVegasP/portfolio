import 'package:flutter/material.dart';
import 'package:flutter_tools/flutter_tools.dart';
import 'package:portfolio/core/tools/no_scroll_glow.dart';
import 'package:portfolio/mixin/parallax_scroll_effect.dart';

class ParallaxScrollEffect extends StatelessWidget
    with ParallaxScrollEffectMixin {
  final Widget parallaxChild;
  final List<Widget> children;
  final double height;
  final ScrollController controller;

  ParallaxScrollEffect({
    Key key,
    @required this.parallaxChild,
    this.children = const [],
    @required this.height,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: updateOffsetOnScroll,
      child: ScrollConfiguration(
        behavior: const NoScrollGlow(),
        child: Stack(
          children: [
            Observer(
              (_) => offset.value < height
                  ? Positioned(
                      top: -.25 * offset.value,
                      child: parallaxChild,
                    )
                  : const SizedBox(),
            ),
            ListView(
              controller: controller,
              padding: EdgeInsets.zero,
              children: [SizedBox(height: height), ...children],
            ),
          ],
        ),
      ),
    );
  }
}

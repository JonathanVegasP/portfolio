import 'package:flutter/material.dart';

class NoScrollGlow extends ScrollBehavior {
  const NoScrollGlow();

  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

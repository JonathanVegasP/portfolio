import 'package:flutter/material.dart';
import 'package:flutter_tools/flutter_tools.dart';

mixin ParallaxScrollEffectMixin on StatelessWidget {
  final offset = .0.obs;

  bool updateOffsetOnScroll(ScrollNotification notification) {
    offset.value = notification.metrics.pixels;
    return true;
  }
}

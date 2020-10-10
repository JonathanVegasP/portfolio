import 'package:flutter/material.dart';
import 'package:portfolio/domain/interfaces/scroll_content.dart';

mixin HomeHeaderMixin on ScrollContent {
  void _animateTo(double page) => controller?.animateTo(
        page ?? 0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );

  void goToHome() => _animateTo(0);

  void goToProjects() => _animateTo(size?.height);
}

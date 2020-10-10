import 'package:flutter/material.dart';

mixin ScrollContentMixin {
  ScrollController get controller;

  double get height;

  void _animateTo(double page) => controller?.animateTo(
        page ?? 0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );

  void goToHome() => _animateTo(0);

  void goToProjects() => _animateTo(height);
}

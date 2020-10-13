import 'package:flutter/material.dart';

mixin ScrollContentMixin {
  ScrollController get controller;

  double get height;

  void _animateTo(double page) => controller.animateTo(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );

  void goToHome() => _animateTo(0);

  void goToAbout() => _animateTo(height);

  void goToProjects() => _animateTo(height * 2);
}

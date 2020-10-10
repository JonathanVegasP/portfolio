import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  final ScrollController controller;
  final double height;

  AppBarWidget({
    this.height,
    double width,
    this.controller,
    List<Widget> actions,
  }) : super(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: width > 1024 ? actions : null,
        );
}

import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    double width,
    List<Widget> actions,
  }) : super(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: width >= 1024 ? actions : null,
        );
}

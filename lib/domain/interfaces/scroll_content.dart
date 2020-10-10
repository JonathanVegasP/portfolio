import 'package:flutter/material.dart';

abstract class ScrollContent extends StatelessWidget {
  final ScrollController controller;

  final Size size;

  const ScrollContent({Key key, this.controller, this.size}) : super(key: key);
}

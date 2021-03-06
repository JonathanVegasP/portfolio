import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/core/resources/images.dart';
import 'package:portfolio/core/tools/dependency_injection.dart';

mixin InitResourcesMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    GestureBinding.instance?.resamplingEnabled = true;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    initDependencies();
    AppImages.cacheImages(context);
    super.initState();
  }
}

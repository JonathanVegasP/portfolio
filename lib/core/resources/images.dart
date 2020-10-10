import 'package:flutter/material.dart';

class AppImages {
  AppImages._();

  static const avatar = 'images/avatar.jpg';
  static const bg = 'images/bg.jpg';
  static const frame_ios = 'images/frame_ios.png';

  static void cacheImages(BuildContext context) {
    final images = [avatar, bg, frame_ios];
    for (final image in images) {
      precacheImage(AssetImage(image), context);
    }
  }
}

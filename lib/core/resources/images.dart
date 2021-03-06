import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  AppImages._();

  static const app_store = 'images/app_store.svg';
  static const avatar = 'images/avatar.jpg';
  static const bg = 'images/bg.jpg';
  static const flix_project = 'images/flix_project.png';
  static const frame_ios = 'images/frame_ios.png';
  static const multibom_lavras_project = 'images/multibom_lavras_project.jpg';
  static const play_store = 'images/play_store.png';

  static Future<Null> cacheImages(BuildContext context) async {
    final images = [app_store, avatar, bg, flix_project, frame_ios, multibom_lavras_project, play_store];
    for (final image in images) {
      if (image.contains('.svg')) {
        if (kIsWeb) {
          precacheImage(NetworkImage('assets/$image'), context);
        } else {
          precachePicture(
            ExactAssetPicture(SvgPicture.svgStringDecoder, image),
            context,
          );
        }
      } else {
        precacheImage(AssetImage(image), context);
      }
    }
  }
}

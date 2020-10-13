import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/images.dart';
import 'package:transparent_image/transparent_image.dart';

class AvatarWidget extends StatelessWidget {
  final double height;
  final BoxFit fit;

  const AvatarWidget({
    Key key,
    this.height = 200,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(200)),
      child: kIsWeb
          ? FadeInImage.memoryNetwork(
              height: height,
              placeholder: kTransparentImage,
              image: AppImages.avatar,
              fit: fit,
            )
          : Image.asset(
              AppImages.avatar,
              height: height,
              fit: fit,
            ),
    );
  }
}

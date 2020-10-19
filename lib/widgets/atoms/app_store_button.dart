import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/resources/images.dart';
import 'package:transparent_image/transparent_image.dart';

class AppStoreButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;

  const AppStoreButton({
    Key key,
    this.color = Colors.tealAccent,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: kIsWeb
          ? FadeInImage.memoryNetwork(
              image: 'assets/${AppImages.app_store}',
              placeholder: kTransparentImage,
              width: 108.5,
              fit: BoxFit.contain,
            )
          : SvgPicture.asset(
              AppImages.app_store,
              fit: BoxFit.contain,
            ),
      style: TextButton.styleFrom(
        primary: color,
        onSurface: color,
      ),
    );
  }
}

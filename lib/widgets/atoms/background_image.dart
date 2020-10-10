import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/images.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;

  const BackgroundImage({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.bg),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}

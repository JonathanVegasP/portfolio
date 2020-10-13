import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/images.dart';

class PhoneWidget extends StatelessWidget {
  final Widget child;

  const PhoneWidget({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 150.5,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.frame_ios),
          ),
        ),
        position: DecorationPosition.foreground,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: child,
          ),
        ),
      ),
    );
  }
}

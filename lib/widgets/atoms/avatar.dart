import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/images.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: const AssetImage(AppImages.avatar),
      radius: 100,
      backgroundColor: Colors.transparent,
    );
  }
}

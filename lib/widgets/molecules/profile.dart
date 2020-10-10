import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';
import 'package:portfolio/widgets/atoms/avatar.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AvatarWidget(),
        const SizedBox(height: 15),
        const TextWidget(
          'Jonathan Vegas Peixoto',
          textType: TextType.title,
          decoration: TextDecoration.underline,
        ),
        const TextWidget(
          'Flutter | React Native Developer',
          textType: TextType.body,
        ),
      ],
    );
  }
}

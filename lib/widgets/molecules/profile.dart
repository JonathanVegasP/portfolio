import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';
import 'package:portfolio/widgets/atoms/avatar.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundGradient(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AvatarWidget(),
            SizedBox(height: 15),
            TextWidget(
              'Jonathan Vegas Peixoto',
              textType: TextType.title,
              decoration: TextDecoration.underline,
            ),
            TextWidget(
              'Flutter | React Native Developer',
              textType: TextType.body,
            ),
          ],
        ),
      ),
    );
  }
}

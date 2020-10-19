import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/colors.dart';
import 'package:portfolio/core/resources/images.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';

class FlixProject extends StatelessWidget {
  const FlixProject() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: BackgroundGradient(
        colors: const [
          AppColors.flix_purple_accent,
          AppColors.flix_purple_primary
        ],
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Image.asset(AppImages.flix_project),
          ),
        ),
      ),
    );
  }
}

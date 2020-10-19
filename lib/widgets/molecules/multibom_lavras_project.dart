import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/colors.dart';
import 'package:portfolio/core/resources/images.dart';
import 'package:portfolio/core/resources/text_style.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class MultibomLavrasProject extends StatelessWidget {
  const MultibomLavrasProject() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Center(
                child: Image.asset(AppImages.multibom_lavras_project),
              ),
            ),
            const TextWidget(
              'Desenvolvido por Unimobile',
              textType: TextType.smallest,
              color: AppColors.dark_grey,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

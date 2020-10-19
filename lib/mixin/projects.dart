import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/text_button.dart';
import 'package:portfolio/widgets/molecules/flix_details.dart';
import 'package:portfolio/widgets/molecules/hello_world_details.dart';
import 'package:portfolio/widgets/molecules/multibom_lavras_details.dart';

mixin ProjectsMixin {
  void _template(BuildContext context, Widget child) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.teal,
        content: SizedBox(
          width: 300,
          child: SingleChildScrollView(
            child: child,
          ),
        ),
        actions: [
          TextButtonWidget(
            text: 'DISMISS',
            color: Colors.white,
            onPressed: () => Navigator.maybePop(context),
          )
        ],
      ),
    );
  }

  void showHelloWorldDetails(BuildContext context) => _template(
        context,
        const HelloWorldDetails(),
      );

  void showMultibomLavrasDetails(BuildContext context) => _template(
        context,
        const MultibomLavrasDetails(),
      );

  void showFlixDetails(BuildContext context) => _template(
        context,
        const FlixDetails(),
      );

  void showXprajaDetails(BuildContext context) {}
}

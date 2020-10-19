import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class HelloWorldDetails extends StatelessWidget {
  const HelloWorldDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextWidget(
      "This is my first app that I've uploaded to Play Store at my account",
      textAlign: TextAlign.justify,
    );
  }
}

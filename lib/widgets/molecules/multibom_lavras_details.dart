import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class MultibomLavrasDetails extends StatelessWidget {
  const MultibomLavrasDetails() : super();

  @override
  Widget build(BuildContext context) {
    return const TextWidget(
      'I participated in the development of this app as my third experience'
      ' write in Java for the platform Android only with success using'
      ' Firebase services for database and push notification, WorkManager'
      ' for background task using the library AndroidX and MVC Pattern at the'
      ' WM Comunicação Digital (Unimobile) company',
      textAlign: TextAlign.justify,
    );
  }
}

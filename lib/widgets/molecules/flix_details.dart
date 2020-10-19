import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class FlixDetails extends StatelessWidget {
  const FlixDetails() : super();

  @override
  Widget build(BuildContext context) {
    return const TextWidget(
      'I participated in the development of this app as my fourth experience'
      ' write in React Native (JS) for the platform Android and iOS with'
      ' success using Firebase services for push notification, analytics and'
      ' social auth, Onesignal service for gateway service to the push'
      ' notification work properly on both platform, Axios for api requests,'
      ' HOC, async storage to store user data and MVVM Pattern at the'
      ' VOLLUP.COM company',
      textAlign: TextAlign.justify,
    );
  }
}

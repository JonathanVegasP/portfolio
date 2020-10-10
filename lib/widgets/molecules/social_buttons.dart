import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/gmail_button.dart';
import 'package:portfolio/widgets/atoms/whats_app_button.dart';

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WhatsAppButton(onPressed: () {}),
        const SizedBox(width: 15),
        GmailButton(onPressed: () {}),
      ],
    );
  }
}

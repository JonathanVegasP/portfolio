import 'package:flutter/material.dart';
import 'package:portfolio/domain/interfaces/url_launcher_service.dart';
import 'package:portfolio/mixin/url_launcher.dart';
import 'package:portfolio/widgets/atoms/gmail_button.dart';
import 'package:portfolio/widgets/atoms/whats_app_button.dart';

class SocialButtons extends StatelessWidget with UrlLauncherMixin {
  final IUrlLauncherService service;

  const SocialButtons(this.service, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WhatsAppButton(onPressed: whatsApp),
        const SizedBox(width: 15),
        GmailButton(onPressed: gmail),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/resources/colors.dart';

class WhatsAppButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WhatsAppButton({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(FontAwesomeIcons.whatsapp, size: 30),
      backgroundColor: AppColors.whats_app,
    );
  }
}

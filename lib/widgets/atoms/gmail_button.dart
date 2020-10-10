import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/colors.dart';

class GmailButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GmailButton({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.email, size: 30),
      backgroundColor: AppColors.gmail,
    );
  }
}

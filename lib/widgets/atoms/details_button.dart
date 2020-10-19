import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';

class DetailsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DetailsButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        'DETAILS',
        style: TextType.body.style.copyWith(color: Colors.white),
      ),
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          onSurface: Colors.white,
          side: const BorderSide(color: Colors.white, width: 2)),
    );
  }
}

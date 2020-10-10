import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const TextButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.color = Colors.tealAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
        primary: color,
        onSurface: color,
      ),
    );
  }
}

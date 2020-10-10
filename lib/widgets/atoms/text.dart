import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;
  final TextAlign textAlign;
  final TextType textType;
  final TextDecoration decoration;
  final Color color;

  const TextWidget(
    this.data, {
    Key key,
    this.onPressed,
    this.textAlign = TextAlign.start,
    this.textType = TextType.body,
    this.decoration,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      data,
      onTap: onPressed,
      textAlign: textAlign,
      style: textType.style.copyWith(color: color, decoration: decoration),
    );
  }
}

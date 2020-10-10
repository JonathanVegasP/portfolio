import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';

class DrawerTile extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;
  final Color color;
  final double iconSize;

  const DrawerTile({
    Key key,
    this.onPressed,
    this.text,
    this.icon,
    this.color = Colors.white,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      title: Text(
        text,
        style: TextType.subTitle.style.copyWith(color: color),
      ),
      leading: Icon(
        icon,
        color: color,
        size: iconSize,
      ),
    );
  }
}

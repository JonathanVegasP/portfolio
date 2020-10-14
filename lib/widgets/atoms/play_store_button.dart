import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/images.dart';

class PlayStoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;

  const PlayStoreButton({
    Key key,
    @required this.onPressed,
    this.color = Colors.tealAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Image.asset(
        AppImages.play_store,
      ),
      style: TextButton.styleFrom(
        primary: color,
        onSurface: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const BackgroundGradient({
    Key key,
    this.colors = const [Colors.tealAccent, Colors.teal],
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}

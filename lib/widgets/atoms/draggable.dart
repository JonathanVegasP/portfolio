import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  final Widget child;

  const DraggableWidget({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: child,
      feedback: child,
      childWhenDragging: SizedBox(),
    );
  }
}

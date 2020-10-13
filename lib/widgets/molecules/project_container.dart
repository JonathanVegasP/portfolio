import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/draggable.dart';

class ProjectContainer extends StatelessWidget {
  final Widget projectChild;
  final List<Widget> detailsChildren;

  const ProjectContainer({
    Key key,
    @required this.projectChild,
    @required this.detailsChildren,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      child: Row(
        children: [
          DraggableWidget(child: projectChild),
          const SizedBox(width: 15),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: detailsChildren,
            ),
          ),
        ],
      ),
    );
  }
}

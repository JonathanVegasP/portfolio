import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/draggable.dart';
import 'package:portfolio/widgets/atoms/phone.dart';

class ProjectWrapper extends StatelessWidget {
  final Widget projectChild;
  final List<Widget> detailsChildren;

  const ProjectWrapper({
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
          DraggableWidget(child: PhoneWidget(child: projectChild)),
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

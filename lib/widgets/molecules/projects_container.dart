import 'package:flutter/material.dart';
import 'package:portfolio/widgets/atoms/background_image.dart';

class ProjectsContainer extends StatelessWidget {
  final double height;
  final List<Widget> children;

  const ProjectsContainer({
    Key key,
    @required this.height,
    this.children = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      child: Center(
        child: ColoredBox(
          color: Colors.black54,
          child: SizedBox(
            height: height * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

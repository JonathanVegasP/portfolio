import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/mixin/scroll_content_mixin.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';
import 'package:portfolio/widgets/atoms/drawer_tile.dart';

class DrawerWidget extends StatelessWidget with ScrollContentMixin {
  final ScrollController controller;
  final double height;

  const DrawerWidget({Key key, this.controller, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BackgroundGradient(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerTile(
              icon: Icons.home,
              onPressed: goToHome,
              text: 'HOME',
              color: Colors.white,
            ),
            DrawerTile(
              icon: FontAwesomeIcons.projectDiagram,
              onPressed: goToProjects,
              text: 'PROJECTS',
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

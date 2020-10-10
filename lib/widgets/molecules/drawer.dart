import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';
import 'package:portfolio/widgets/atoms/drawer_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BackgroundGradient(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerTile(
              icon: Icons.home,
              onPressed: () {},
              text: 'HOME',
              color: Colors.white,
            ),
            DrawerTile(
              icon: FontAwesomeIcons.projectDiagram,
              onPressed: () {},
              text: 'PROJECTS',
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

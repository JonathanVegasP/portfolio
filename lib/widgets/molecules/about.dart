import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';
import 'package:portfolio/widgets/atoms/avatar.dart';
import 'package:portfolio/widgets/atoms/background_gradient.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class AboutWidget extends StatelessWidget {
  final double width;

  const AboutWidget({Key key, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundGradient(
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: SizedBox(
                width: width < 768 ? 300 : 600,
                child: Card(
                  margin: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    bottom: 15,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      right: 15,
                      left: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextWidget(
                          'About Me\n',
                          textType: TextType.title,
                          color: Colors.grey[800],
                          textAlign: TextAlign.justify,
                        ),
                        TextWidget(
                          "I'm a Developer that felt in love with Mobile "
                          'development',
                          textAlign: TextAlign.center,
                          color: Colors.grey[800],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: AvatarWidget(height: 100),
            ),
          ],
        ),
      ),
    );
  }
}

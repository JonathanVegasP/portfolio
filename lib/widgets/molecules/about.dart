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
      colors: [Colors.orange, Colors.deepOrange[600]],
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: SizedBox(
                width: width < 768 ? 300 : 600,
                child: Card(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    bottom: 15,
                  ),
                  child: BackgroundGradient(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        right: 15,
                        left: 15,
                        bottom: 15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          TextWidget(
                            'About Me',
                            textType: TextType.title,
                            color: Colors.white,
                            textAlign: TextAlign.justify,
                          ),
                          TextWidget(
                            "I'm a Developer that felt in love with Mobile "
                            'development',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: AvatarWidget(
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

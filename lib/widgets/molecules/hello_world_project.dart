import 'package:flutter/material.dart';
import 'package:portfolio/core/resources/text_style.dart';
import 'package:portfolio/widgets/atoms/text.dart';

class HelloWorldProject extends StatelessWidget {
  const HelloWorldProject({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      primary: false,
      appBar: AppBar(
        primary: false,
        title: TextWidget(
          'Hello World',
          textType: TextType.small,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextWidget(
          'Hello World',
          color: Colors.black,
        ),
      ),
    );
  }
}

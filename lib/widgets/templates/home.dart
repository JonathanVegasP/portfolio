import 'package:flutter/material.dart';
import 'package:portfolio/widgets/organisms/home_content.dart';
import 'package:portfolio/widgets/organisms/home_header.dart';

class HomeWidget extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return HomeHeader(
      controller: _controller,
      width: width,
      height: height,
      child: HomeContent(
        controller: _controller,
        width: width,
        height: height,
      ),
    );
  }
}

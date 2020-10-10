import 'package:flutter/material.dart';

enum TextType { h1, h2, h3, h4, h5, h6, title, subTitle, body, small }

extension TextTypeX on TextType {
  TextStyle get style {
    switch (this) {
      case TextType.h1:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
        );
      case TextType.h2:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        );
      case TextType.h3:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
        );
      case TextType.h4:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        );
      case TextType.h5:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        );
      case TextType.h6:
        return const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11,
        );
      case TextType.title:
        return const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        );
      case TextType.subTitle:
        return const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 19,
        );
      case TextType.body:
        return const TextStyle(
          fontSize: 16,
        );
      case TextType.small:
        return const TextStyle(
          fontSize: 13,
        );
      default:
        throw StateError('Impossible case');
    }
  }
}

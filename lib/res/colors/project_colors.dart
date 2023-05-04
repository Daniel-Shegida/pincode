import 'package:flutter/material.dart';

/// цветовые ресурсы проекта
abstract class ProjectColors {
  static const Color black = Color.fromRGBO(39, 39, 39, 1);

  static const Color white = Color.fromRGBO(255, 255, 255, 1);

  static const Color purple = Color.fromRGBO(123, 97, 255, 1);

  static const Color gradientStart = Color.fromRGBO(124, 98, 255, 1);

  static const Color gradientEnd = Color.fromRGBO(186, 98, 255, 1);

  static const Color shadow = Color.fromRGBO(123, 97, 255, 0.1);

  static const Color backGroundColor = Color(0xFFFDFDFD);

  static const Gradient gradient =
      LinearGradient(colors: [gradientStart, gradientEnd]);
}

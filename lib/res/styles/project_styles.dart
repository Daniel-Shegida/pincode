import 'package:flutter/material.dart';
import 'package:untitled/res/colors/project_colors.dart';

/// стили проекта
abstract class ProjectStyles {
  static TextStyle boldBlack32Lato = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ProjectColors.black,
  );

  static TextStyle regularPurple12Lato = const TextStyle(
    fontSize: 12,
    color: ProjectColors.purple,
  );

  static TextStyle boldPurple32Lato = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ProjectColors.purple,
  );

  static TextStyle boldWhite16Lato = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ProjectColors.white,
  );

  static TextStyle mediumBlack32Lato = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: ProjectColors.black,
  );
}

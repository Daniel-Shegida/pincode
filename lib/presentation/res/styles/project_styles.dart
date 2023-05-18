import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';

/// стили проекта (добавлен google_fonts вместо локальных стилей )
abstract class ProjectStyles {
  static TextStyle boldBlack32Lato = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ProjectColors.black,
    ),
  );

  static TextStyle regularPurple12Lato = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 12.sp,
      color: ProjectColors.purple,
    ),
  );

  static TextStyle boldPurple32Lato = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ProjectColors.purple,
    ),
  );

  static TextStyle boldWhite16Lato = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: ProjectColors.white,
    ),
  );

  static TextStyle mediumBlack32Lato = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w500,
      color: ProjectColors.black,
    ),
  );
}

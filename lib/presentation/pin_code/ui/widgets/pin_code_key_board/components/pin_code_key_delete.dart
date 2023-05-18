import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/icons/project_icons.dart';

/// виджет иконки удаления с клавиатуры
class PinCodeKeyDelete extends StatelessWidget {
  const PinCodeKeyDelete({required this.onPressed, Key? key}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: SvgPicture.asset(
          ProjectIcons.iDelete,
          // ignore: deprecated_member_use
          color: ProjectColors.purple,
        ),
      ),
    );
  }
}
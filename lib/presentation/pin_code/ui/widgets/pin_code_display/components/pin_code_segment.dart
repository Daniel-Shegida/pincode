import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_display/pin_code_display.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';

/// сегмента виджета [PinCodeDisplay] отображающий цифри пинкода
class PinCodeSegment extends StatelessWidget {
  const PinCodeSegment({required this.number, Key? key}) : super(key: key);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ProjectColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: ProjectColors.shadow,
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Text(
        number,
        style: ProjectStyles.boldPurple32Lato,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';

/// виджет кнопки с значением клавиатуры
class PinCodeKeyNumber extends StatelessWidget {
  const PinCodeKeyNumber({
    required this.pinCodeNumber,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final int pinCodeNumber;
  final void Function(int key) onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed(pinCodeNumber);
      },
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Text(
          pinCodeNumber.toString(),
          style: ProjectStyles.mediumBlack32Lato,
        ),
      ),
    );
  }
}

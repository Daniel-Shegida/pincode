import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';

class PinCodeKeyNumber extends StatelessWidget {
  const PinCodeKeyNumber(
      {required this.pincodeNumber, required this.onPressed, Key? key})
      : super(key: key);
  final int pincodeNumber;
  final void Function(int key) onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed(pincodeNumber);
      },
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Text(
          pincodeNumber.toString(),
          style: ProjectStyles.mediumBlack32Lato,
        ),
      ),
    );
  }
}
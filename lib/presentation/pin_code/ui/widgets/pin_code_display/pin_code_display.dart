import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';

/// отображения пинкода проекта
class PinCodeDisplay extends StatelessWidget {
  const PinCodeDisplay({required this.numbers, required this.amount, Key? key})
      : super(key: key);
  final List<int> numbers;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i in numbers)
          PinCodeSegment(
            number: i.toString(),
          ),
        for (int i = numbers.length; i < 4; i++)
          const PinCodeSegment(
            number: '',
          ),
      ],
    );
  }
}

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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_key_board.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/strings/project_strings.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';
import 'package:untitled/presentation/ui_kit/basic_transparent_app_bar.dart';
import 'package:untitled/presentation/ui_kit/gradient_rounded_elevated_button.dart';

/// моковое значение номера, которое должно приходить на экран
const _phoneNumber = '+7 (960) 147-67-47';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final List<int> _pinCodeSmsList = [];

  void onNumberPressed(int number) {
    if (_pinCodeSmsList.length < 4) {
      _pinCodeSmsList.add(number);
    }
    setState(() {
      _pinCodeSmsList;
    });
  }

  void onDeletePressed() {
    if (_pinCodeSmsList.isNotEmpty) {
      _pinCodeSmsList.removeLast();
    }
    setState(() {
      _pinCodeSmsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColors.backGroundColor,
        appBar: BasicTransparentAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(flex: 1,),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  ProjectStrings.pinCodeTitle,
                  style: ProjectStyles.boldBlack32Lato,
                ),
                SizedBox(
                  height: 19.h,
                ),
                Text(
                  ProjectStrings.pincodeHint(_phoneNumber),
                  style: ProjectStyles.regularPurple12Lato,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PincodeRow(
                  numbers: _pinCodeSmsList,
                ),
                SizedBox(
                  height: 123.h,
                ),
                _PinCodeRepeatButton(
                  onPressed: () {},
                ),
                // Spacer(flex: 1,),
                SizedBox(
                  height: 59.h,
                ),
                PinCodeKeyboard(
                  onNumberPressed: onNumberPressed,
                  onDeletePressed: onDeletePressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PincodeRow extends StatelessWidget {
  const PincodeRow({required this.numbers, Key? key}) : super(key: key);
  final List<int> numbers;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i in numbers)
          _pincodeSegment(
            number: i.toString(),
          ),
        for (int i = numbers.length; i < 4; i++)
          const _pincodeSegment(
            number: '',
          ),
      ],
    );
  }
}

class _pincodeSegment extends StatelessWidget {
  const _pincodeSegment({required this.number, Key? key}) : super(key: key);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
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

class _PinCodeRepeatButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _PinCodeRepeatButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientRoundedElevatedButton(
      width: double.infinity,
      height: 51.h,
      onPressed: onPressed,
      borderRadius: BorderRadius.circular(20),
      gradient: ProjectColors.gradient,
      child: Text(
        ProjectStrings.pinCodeButton,
        style: ProjectStyles.boldWhite16Lato,
      ),
    );
  }
}

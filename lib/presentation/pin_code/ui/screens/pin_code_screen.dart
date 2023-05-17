import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/icons/project_icons.dart';
import 'package:untitled/presentation/res/strings/project_strings.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';
import 'package:untitled/presentation/ui_kit/basic_transparent_app_bar.dart';

/// моковое значение номера, которое должно приходить на экран
const _phoneNumber = '+7 (960) 147-67-47';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final List<int> _pincodeSmsList = [];

  void onNumberPressed(int number) {
    if (_pincodeSmsList.length < 4) {
      _pincodeSmsList.add(number);
    }
    setState(() {
      _pincodeSmsList;
    });
  }

  void onDeletePressed() {
    if (_pincodeSmsList.isNotEmpty) {
      _pincodeSmsList.removeLast();
    }
    setState(() {
      _pincodeSmsList;
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
                  numbers: _pincodeSmsList,
                ),
                SizedBox(
                  height: 123.h,
                ),
                MyElevatedButton(
                  width: double.infinity,
                  height: 51.h,
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(20),
                  gradient: ProjectColors.gradient,
                  child: Text(
                    ProjectStrings.pinCodeButton,
                    style: ProjectStyles.boldWhite16Lato,
                  ),
                ),
                // Spacer(flex: 1,),
                SizedBox(
                  height: 59.h,
                ),
                PincodeKeyboard(
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

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          surfaceTintColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

class PincodeKeyboard extends StatelessWidget {
  const PincodeKeyboard({
    required this.onNumberPressed,
    required this.onDeletePressed,
    Key? key,
  }) : super(key: key);
  final void Function(int) onNumberPressed;
  final VoidCallback onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PinCodeKey(
              pincodeNumber: 1,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 2,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 3,
              onPressed: onNumberPressed,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PinCodeKey(
              pincodeNumber: 4,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 5,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 6,
              onPressed: onNumberPressed,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PinCodeKey(
              pincodeNumber: 7,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 8,
              onPressed: onNumberPressed,
            ),
            _PinCodeKey(
              pincodeNumber: 9,
              onPressed: onNumberPressed,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 65,
              height: 65,
            ),
            _PinCodeKey(
              pincodeNumber: 0,
              onPressed: onNumberPressed,
            ),
            _PinCodeDelete(
              onPressed: onDeletePressed,
            ),
          ],
        ),
      ],
    );
  }
}

class _PinCodeKey extends StatelessWidget {
  const _PinCodeKey(
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

class _PinCodeDelete extends StatelessWidget {
  const _PinCodeDelete({required this.onPressed, Key? key}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: SvgPicture.asset(
          ProjectIcons.iDelete,
          color: ProjectColors.purple,
        ),
      ),
    );
  }
}

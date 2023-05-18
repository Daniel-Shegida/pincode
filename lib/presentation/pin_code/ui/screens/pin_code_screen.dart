import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_display.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_key_board.dart';
import 'package:untitled/presentation/res/colors/project_colors.dart';
import 'package:untitled/presentation/res/strings/project_strings.dart';
import 'package:untitled/presentation/res/styles/project_styles.dart';
import 'package:untitled/presentation/ui_kit/basic_transparent_app_bar.dart';
import 'package:untitled/presentation/ui_kit/gradient_rounded_elevated_button.dart';

/// моковое значение номера, который должен приходить на экран
const String _phoneNumber = '+7 (960) 147-67-47';

/// Экран набора пинкода с смс
class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final List<int> _pinCodeSmsList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColors.backGroundColor,
        appBar: const BasicTransparentAppBar(),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: SingleChildScrollView(
                // необходимо для добавления spacer
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const _PinCodeTitle(),
                        SizedBox(
                          height: 19.h,
                        ),
                        const _PinCodeSubTitle(
                          phoneNumber: _phoneNumber,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        PinCodeDisplay(
                          numbers: _pinCodeSmsList,
                          amount: 4,
                        ),
                        SizedBox(
                          height: 110.h,
                        ),
                        const Spacer(),
                        _PinCodeRepeatButton(
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 59.h,
                        ),
                        PinCodeKeyboard(
                          onNumberPressed: _onNumberPressed,
                          onDeletePressed: _onDeletePressed,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// обработка нажатия кнопки с значением
  void _onNumberPressed(int number) {
    if (_pinCodeSmsList.length < 4) {
      _pinCodeSmsList.add(number);
    }
    setState(() {
      _pinCodeSmsList;
    });
  }

  /// обработка нажатия кнопки удаления
  void _onDeletePressed() {
    if (_pinCodeSmsList.isNotEmpty) {
      _pinCodeSmsList.removeLast();
    }
    setState(() {
      _pinCodeSmsList;
    });
  }
}

/// озаглавие экрана пинкода
class _PinCodeTitle extends StatelessWidget {
  const _PinCodeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectStrings.pinCodeTitle,
      style: ProjectStyles.boldBlack32Lato,
    );
  }
}

/// подзаголовок экрана пинкода
class _PinCodeSubTitle extends StatelessWidget {
  const _PinCodeSubTitle({required this.phoneNumber, Key? key})
      : super(key: key);
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectStrings.pincodeHint(phoneNumber),
      style: ProjectStyles.regularPurple12Lato,
      textAlign: TextAlign.center,
    );
  }
}

/// кнопка повторно отправляющая смс
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

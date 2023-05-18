import 'package:flutter/material.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_key_delete.dart';
import 'package:untitled/presentation/pin_code/ui/widgets/pin_code_key_number.dart';

/// клавиатура набора пинкода
class PinCodeKeyboard extends StatelessWidget {
  const PinCodeKeyboard({
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
            PinCodeKeyNumber(
              pincodeNumber: 1,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
              pincodeNumber: 2,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
              pincodeNumber: 3,
              onPressed: onNumberPressed,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinCodeKeyNumber(
              pincodeNumber: 4,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
              pincodeNumber: 5,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
              pincodeNumber: 6,
              onPressed: onNumberPressed,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PinCodeKeyNumber(
              pincodeNumber: 7,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
              pincodeNumber: 8,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyNumber(
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
            PinCodeKeyNumber(
              pincodeNumber: 0,
              onPressed: onNumberPressed,
            ),
            PinCodeKeyDelete(
              onPressed: onDeletePressed,
            ),
          ],
        ),
      ],
    );
  }
}

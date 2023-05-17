import 'package:flutter/material.dart';
import 'package:untitled/presentation/pin_code/ui/screens/pin_code_screen.dart';

/// Модель унифицирующая навигацию между экранами
abstract class NavigationHelper {
  /// Метод перехода на экран пинкода
  static void moveToPinCodeScreen(
    BuildContext context,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PinCodeScreen(),
      ),
    );
  }
}

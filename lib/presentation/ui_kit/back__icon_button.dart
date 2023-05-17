import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/presentation/res/icons/project_icons.dart';

/// кнопка назад с свг шевроном
class BackIconButton extends StatelessWidget {
  const BackIconButton({required this.onPressed, Key? key}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        ProjectIcons.iShevronLeft,
        width: 7,
        height: 14,
      ),
    );
  }
}

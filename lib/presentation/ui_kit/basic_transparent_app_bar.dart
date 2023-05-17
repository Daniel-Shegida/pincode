import 'package:flutter/material.dart';
import 'package:untitled/presentation/ui_kit/back__icon_button.dart';

/// базовый прозрачный аппбар проекта возвращяюший назад по кнопке
class BasicTransparentAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BasicTransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: BackIconButton(
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

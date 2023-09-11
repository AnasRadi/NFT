import 'package:flutter/material.dart';
import 'app.colors.dart';
import 'app.fonts.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.white,
    brightness: Brightness.dark,
    background: AppColors.black,
  ),
  indicatorColor: AppColors.purple,
  dividerColor: Colors.white54,
  fontFamily: AppFonts.contax,
);

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.black,
    brightness: Brightness.light,
    background: AppColors.white,
  ),
  indicatorColor: AppColors.purple,
  dividerColor: Colors.black,
  fontFamily: AppFonts.contax,
);

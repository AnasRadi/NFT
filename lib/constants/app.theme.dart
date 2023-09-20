import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app.colors.dart';

class ThemesService {
  final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.black2,
      appBarTheme: AppBarTheme(
        color: AppColors.black2,
        titleTextStyle: GoogleFonts.roboto(
          color: AppColors.white,
        ),
      ),      buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    disabledColor: AppColors.black2,
  ));

  final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          color: AppColors.black2,
        ),
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: AppColors.black2,
          disabledColor: Colors.white,
          ));
}
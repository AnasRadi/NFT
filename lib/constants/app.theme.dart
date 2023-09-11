import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.colors.dart';

class ThemesService{
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.white,
    appBarTheme: const AppBarTheme(),
    dividerColor: AppColors.black,
  );

  final darkTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.black,
    appBarTheme: const AppBarTheme(),
    dividerColor: AppColors.white,
  );

  final _getStorage = GetStorage();
  final _darkThemeKey = 'isDarkTheme';

  void saveThemeData(bool isDarkMode){
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode(){
    return _getStorage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme(){
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light :ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
    }

}
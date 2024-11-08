import 'package:flutter/material.dart';
import 'package:todo_app/core/themes/color_manager.dart';
import 'package:todo_app/core/themes/font_manager.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: ColorManager.seedColorLight),
        fontFamily: FontConstants.fontFamily),
    AppTheme.darkTheme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: ColorManager.seedColorDark),
        fontFamily: FontConstants.fontFamily),
  };
}

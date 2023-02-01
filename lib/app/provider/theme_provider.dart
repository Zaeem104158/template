import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';

final themeProvider = FutureProvider<String>((ref) async {
  final themeMode = await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.light;
  return themeMode.modeName.toLowerCase();
});

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.dark(),
    primaryColor: colorDarkMode,
    scaffoldBackgroundColor: colorDarkMode,
    iconTheme: IconThemeData(
      color: colorWhite,
    ),
    indicatorColor: colorWhite,
    appBarTheme: AppBarTheme(
      foregroundColor: colorWhite,
      shadowColor: colorGrey,
    ),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme.light(),
    primaryColor: colorWhite,
    scaffoldBackgroundColor: colorWhite,
    indicatorColor: colorText, //suffix/prefix
    appBarTheme: AppBarTheme(
      foregroundColor: colorPrimary,
    ),
    iconTheme: IconThemeData(
      color: colorPrimary,
    ),
  );
}

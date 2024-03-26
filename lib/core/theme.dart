import 'package:flutter/material.dart';
import 'package:musicvoc/core/const_colors.dart';

class MyThemes {
  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade100,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade200,
      primary: Colors.grey.shade300,
      secondary: Colors.grey.shade300,
    ),
    iconTheme: const IconThemeData(
      color: kBlackColor,
      opacity: 1,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade100,
    ),
  );

  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.grey.withOpacity(0.1),
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade800,
    ),
    iconTheme: const IconThemeData(
      color: kWhiteColor,
      opacity: 1,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade900,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicvoc/core/const_colors.dart';

class MyThemes {
  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade100,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade200,
      primary: Colors.grey.shade500,
      secondary: Colors.grey.shade300,
    ),
    iconTheme: const IconThemeData(
      color: kBlackColor,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade100,
    ),
    textTheme: GoogleFonts.montserratTextTheme().apply().copyWith(
          bodyLarge: const TextStyle(
            color: Colors.black,
          ),
          bodyMedium: const TextStyle(
            color: Colors.grey,
          ),
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
    ),
    appBarTheme: AppBarTheme(
      color: Colors.grey.shade900,
    ),
    textTheme: GoogleFonts.montserratTextTheme().apply().copyWith(
          bodyLarge: const TextStyle(
            color: Colors.white,
          ),
          bodyMedium: const TextStyle(
            color: Colors.grey,
          ),
        ),
  );
}

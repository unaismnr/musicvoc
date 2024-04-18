import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicvoc/core/const_colors.dart';

class MyThemes {
  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade100,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade200,
      primary: Colors.grey.shade700,
      secondary: Colors.grey.shade300,
    ),
    iconTheme: const IconThemeData(
      color: kBlackColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade100,
    ),
    textTheme: GoogleFonts.latoTextTheme().apply().copyWith(
          bodyLarge: const TextStyle(
            color: Colors.black,
          ),
          bodyMedium: const TextStyle(
            color: Colors.grey,
          ),
        ),
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.grey,
  );

  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.grey.withOpacity(0.2),
      primary: Colors.grey,
      secondary: Colors.grey.shade800,
    ),
    iconTheme: const IconThemeData(
      color: kWhiteColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade900,
    ),
    textTheme: GoogleFonts.latoTextTheme().apply().copyWith(
          bodyLarge: const TextStyle(
            color: Colors.white,
          ),
          bodyMedium: const TextStyle(
            color: Colors.grey,
          ),
        ),
    fontFamily: GoogleFonts.lato().fontFamily,
    cardColor: Colors.black,
  );
}

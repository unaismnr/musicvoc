import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/theme.dart';

import 'view/home/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        title: 'MusicVoc',
        theme: MyThemes.lightMode,
        darkTheme: MyThemes.darkMode,
        home: const ScreenHome(),
      ),
    );
  }
}

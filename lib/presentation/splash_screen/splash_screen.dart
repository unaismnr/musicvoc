import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/home/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    BlocProvider.of<AllSongsBloc>(context)
        .add(const AllSongsEvent.fetchSongs());
    super.initState();
    _loadThemePreference();
  }

  Future<void> _goToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(
      () => ScreenHome(),
      transition: kTransitionRightToLeft,
      duration: const Duration(),
    );
  }

  Future<void> _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    Get.changeThemeMode(
      isDarkTheme ? ThemeMode.light : ThemeMode.dark,
    );
  }

  @override
  Widget build(BuildContext context) {
    _goToHome();
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kMainSkyBlueColor,
                kMainBlueColor,
              ]),
        ),
        child: Center(
          child: Image.asset(
            height: 300.h,
            width: 150.w,
            'assets/musicvocsplashlogo.png',
          ),
        ),
      ),
    );
  }
}

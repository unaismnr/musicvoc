import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/presentation/home/screen_home.dart';
import 'package:page_transition/page_transition.dart';

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
    _goToHome();
    super.initState();
  }

  Future<void> _goToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.of(context).pushReplacement(
        PageTransition(
          child: ScreenHome(),
          type: PageTransitionType.rightToLeft,
          duration: const Duration(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            'assets/musicvoc-logo-splash.png',
          ),
        ),
      ),
    );
  }
}

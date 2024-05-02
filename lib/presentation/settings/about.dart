import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kMainSkyBlueColor,
              kMainBlueColor,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20.w),
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.w),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: Center(
                child: Text(
                  'MusicVoc is an offline music player app that allows users to listen to music from their storage. It also includes functions such as adding to favorites, creating playlists, viewing recently played tracks, and seeing the most frequently played songs.',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

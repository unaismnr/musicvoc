import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/playlist/playlist.dart';
import 'package:musicvoc/presentation/search/screen_search.dart';
import 'package:musicvoc/presentation/settings/screen_settings.dart';
import 'package:musicvoc/presentation/songs_screens/all_songs.dart';
import 'package:musicvoc/presentation/songs_screens/favorites.dart';
import 'package:musicvoc/presentation/songs_screens/mostly_played.dart';
import 'package:musicvoc/presentation/songs_screens/recently_played.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final player = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHomeButtons(
                    onTap: () {
                      Get.to(
                        () => const RecentlyPlayed(),
                        transition: kTransitionRightToLeft,
                        duration: const Duration(
                          milliseconds: 80,
                        ),
                      );
                    },
                    title: 'RECENTLY \n PLAYED'),
                CustomHomeButtons(
                    onTap: () {
                      Get.to(
                        () => const MostlyPlayed(),
                        transition: kTransitionRightToLeft,
                        duration: const Duration(
                          milliseconds: 80,
                        ),
                      );
                    },
                    title: 'MOSTLY \n PLAYED'),
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomHomeButtons(
                    onTap: () {
                      Get.to(
                        () => const Favorites(),
                        transition: kTransitionRightToLeft,
                        duration: const Duration(
                          milliseconds: 80,
                        ),
                      );
                    },
                    title: 'FAVORITES'),
                CustomHomeButtons(
                    onTap: () {
                      Get.to(
                        () => const PlaylistScreen(),
                        transition: kTransitionRightToLeft,
                        duration: const Duration(
                          milliseconds: 80,
                        ),
                      );
                    },
                    title: 'PLAYLIST'),
              ],
            ),
            kHeight10,
            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.w),
                      topRight: Radius.circular(20.w),
                    ),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: AllSongs()),
            ),
          ],
        ),
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
      title: Image.asset(
        kAppLogo,
        height: 50.h,
        width: 130.w,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            Get.to(
              () => const ScreenSearch(),
              transition: kTransitionRightToLeft,
              duration: const Duration(
                milliseconds: 80,
              ),
            );
          },
          icon: Icon(
            Icons.search,
            size: 28.w,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(
              () => const ScreenSettings(),
              transition: kTransitionRightToLeft,
              duration: const Duration(
                milliseconds: 80,
              ),
            );
          },
          icon: Icon(
            Icons.settings,
            size: 28.w,
          ),
        ),
        SizedBox(width: 5.w)
      ],
    );
  }

  Widget customTabBar(String title) {
    return SizedBox(
      height: 28.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Center(
          child: Tab(
            text: title,
          ),
        ),
      ),
    );
  }
}

class CustomHomeButtons extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const CustomHomeButtons({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 160.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.w),
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          color: kMainBlueColor,
          width: 1.7.w,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.w),
        onTap: onTap,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: TextStyle(
              color: Theme.of(context).iconTheme.color,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/controllers/search_controller.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/navigation_helper.dart';
import 'package:musicvoc/presentation/playlist/playlist.dart';
import 'package:musicvoc/presentation/search/screen_search.dart';
import 'package:musicvoc/presentation/settings/screen_settings.dart';
import 'package:musicvoc/presentation/songs_screens/all_songs.dart';
import 'package:musicvoc/presentation/songs_screens/favorites.dart';
import 'package:musicvoc/presentation/songs_screens/mostly_played.dart';
import 'package:musicvoc/presentation/songs_screens/recently_played.dart';
import 'package:page_transition/page_transition.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final player = AssetsAudioPlayer.withId('0');
  final searchController = Get.put(SearchQueryController());

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
                      NavigationHelper.pushRightToLeft(
                        context,
                        const RecentlyPlayed(),
                      );
                    },
                    title: 'RECENTLY \n PLAYED'),
                CustomHomeButtons(
                    onTap: () {
                      NavigationHelper.pushRightToLeft(
                        context,
                        const MostlyPlayed(),
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
                      NavigationHelper.pushRightToLeft(
                        context,
                        const Favorites(),
                      );
                    },
                    title: 'FAVORITES'),
                CustomHomeButtons(
                    onTap: () {
                      NavigationHelper.pushRightToLeft(
                        context,
                        const PlaylistScreen(),
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
            Navigator.of(context)
                .push(
                  PageTransition(
                    child: ScreenSearch(),
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 1),
                  ),
                )
                .then(
                  (value) => searchController.search('', []),
                );
          },
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            NavigationHelper.pushRightToLeft(
              context,
              ScreenSettings(),
            );
          },
          icon: const Icon(
            Icons.settings,
            size: 28,
          ),
        ),
        SizedBox(width: 5.w)
      ],
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
          width: 1.7,
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

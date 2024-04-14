import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/playlist/playlist.dart';
import 'package:musicvoc/presentation/search/screen_search.dart';
import 'package:musicvoc/presentation/settings/screen_settings.dart';
import 'package:musicvoc/presentation/songs_screens/all_songs.dart';
import 'package:musicvoc/presentation/songs_screens/favorites.dart';
import 'package:musicvoc/presentation/songs_screens/mostly_played.dart';
import 'package:musicvoc/presentation/songs_screens/recently_played.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
        children: [
          TabBar(
            padding: EdgeInsets.all(10.w),
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelColor: Theme.of(context).iconTheme.color,
            labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
            overlayColor: const MaterialStatePropertyAll(
              Colors.transparent,
            ),
            unselectedLabelColor: Theme.of(context).iconTheme.color,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              border: Border.all(
                color: kMainBlueColor,
                width: 1.5.w,
              ),
              borderRadius: BorderRadius.circular(20.w),
            ),
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              customTabBar('Songs'),
              customTabBar('Recently Played'),
              customTabBar('Mostly Played'),
              customTabBar('Favorites'),
              customTabBar('Playlist'),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AllSongs(),
                    RecentlyPlayed(),
                    MostlyPlayed(),
                    Favorites(),
                    Playlist(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar homeAppBar() {
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
              transition: kNavigationTransition,
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
              transition: kNavigationTransition,
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

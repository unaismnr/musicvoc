import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/view/home/widgets/all_songs.dart';
import 'package:musicvoc/view/home/widgets/favorites.dart';
import 'package:musicvoc/view/home/widgets/playlist.dart';
import 'package:musicvoc/view/home/widgets/recently_played.dart';

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
            padding: const EdgeInsets.all(10),
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelColor: Theme.of(context).iconTheme.color,
            labelPadding: const EdgeInsets.symmetric(horizontal: 3),
            overlayColor: const MaterialStatePropertyAll(
              Colors.transparent,
            ),
            unselectedLabelColor: Theme.of(context).iconTheme.color,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              border: Border.all(
                color: kMainBlueColor,
                width: 1.5,
              ),

              // gradient: const LinearGradient(
              //   begin: Alignment.centerLeft,
              //   end: Alignment.centerRight,
              //   colors: [
              //     kMainSkyBlueColor,
              //     kMainBlueColor,
              //   ],
              // ),
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: const TextStyle(
              fontSize: 16,
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
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AllSongs(),
                    RecentlyPlayed(),
                    Favorites(),
                    Playlist(),
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
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            size: 28,
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Tab(
            text: title,
          ),
        ),
      ),
    );
  }
}

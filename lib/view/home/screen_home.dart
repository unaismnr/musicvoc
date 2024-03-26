import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
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
    _tabController = TabController(length: 4, vsync: this);
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
            // isScrollable: true,
            // tabAlignment: TabAlignment.start,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 12.w),
            overlayColor: const MaterialStatePropertyAll(
              Colors.transparent,
            ),
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  kMainSkyBlueColor,
                  kMainBlueColor,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              customTabBar('Songs'),
              customTabBar('Recent'),
              customTabBar('Favorites'),
              customTabBar('Playlist'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AllSongs(),
                RecentlyPlayed(),
                Favorites(),
                Playlist(),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      // backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      title: Image.asset(
        'assets/musicvoclogo.png',
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
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            size: 28,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 5.w)
      ],
    );
  }

  Widget customTabBar(String title) {
    return SizedBox(
      height: 35.h,
      // width: ,
      child: Center(
        child: Tab(
          text: title,
        ),
      ),
    );
  }
}



// class CustomTabBar extends StatelessWidget {
//   final String title;
//   const CustomTabBar({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 35.h,
//       width: 85.w,
//       child: Center(
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

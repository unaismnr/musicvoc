import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/playlist/playlist_folder_songs.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
        centerTitle: true,
      ),
      body: GridView.count(
        shrinkWrap: true,
        padding: EdgeInsets.all(8.w),
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 8.w,
        crossAxisCount: 3,
        children: List.generate(
          10,
          (index) => Column(
            children: [
              Container(
                height: 70.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  color: Theme.of(context).cardColor,
                ),
                child: IconButton(
                  onPressed: () {
                    Get.to(
                      () => const PlaylistFolderSongs(),
                      transition: kNavigationTransition,
                    );
                  },
                  icon: Icon(
                    Icons.music_note_outlined,
                    size: 50.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Text(
                "Sample",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

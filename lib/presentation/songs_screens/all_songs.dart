import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/songs_model.dart';
import 'package:musicvoc/infrastructure/get_audios_repo.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AllSongs extends StatelessWidget {
  const AllSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetAudiosRepo().getAudios(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          log('Error: ${snapshot.error}');
        } else if (snapshot.data == null || (snapshot.data as List).isEmpty) {
          return const Center(
            child: Text('No Songs Found'),
          );
        } else {
          final List<SongsModel> songList = snapshot.data as List<SongsModel>;
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 25.w,
                child: QueryArtworkWidget(
                  id: songList[index].id,
                  type: ArtworkType.AUDIO,
                  nullArtworkWidget: const Icon(
                    Icons.music_note,
                    size: 35,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songList[index].songName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  Text(
                    songList[index].artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.more_vert,
              ),
              onTap: () {
                Get.to(
                  () => ScreenPlaying(song: songList[index]),
                  transition: kNavigationTransition,
                );
              },
            ),
            separatorBuilder: (context, index) => Divider(
              indent: 10.w,
              color: Theme.of(context).colorScheme.secondary,
            ),
            itemCount: songList.length,
          );
        }
        return const SizedBox();
      },
    );
  }
}

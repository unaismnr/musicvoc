import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/controllers/audio_player_controller.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';

class CustomBottomMusic extends StatelessWidget {
  final BuildContext context;
  CustomBottomMusic({super.key, required this.context});

  final songPlayController = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: Theme.of(context).colorScheme.background,
      ),
      child: InkWell(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        onTap: () => Get.to(
            () => ScreenPlaying(
                  // allSongs: songPlayController.allSongs!,
                  currentIndex: songPlayController.playIndex.toInt(),
                ),
            transition: kNavigationTransition),
        child: PlayerBuilder.current(
          player: songPlayController.audioPlayer,
          builder: (context, playing) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 21.w),
                  child: SizedBox(
                    height: 42.w,
                    width: 42.w,
                    child: QueryArtworkWidget(
                      id: songPlayController.songId.toInt(),
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: CircleAvatar(
                        backgroundColor: kMainBlueColor,
                        child: Icon(
                          Icons.music_note,
                          size: 30.w,
                          color: kWhiteColor,
                        ),
                      ),
                      artworkFit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Center(
                    child: Obx(
                      () => Text(
                        songPlayController.currentSongTitle.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                    ),
                  ),
                ),
                PlayerBuilder.isPlaying(
                  player: songPlayController.audioPlayer,
                  builder: (context, isPlaying) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: IconButton(
                        onPressed: () {
                          songPlayController.audioPlayer.playOrPause();
                        },
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 38.sp,
                          color: kMainBlueColor,
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CustomBottomMusic2 extends StatelessWidget {
  final BuildContext context;
  CustomBottomMusic2({super.key, required this.context});

  final songPlayController = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: Theme.of(context).colorScheme.background,
      ),
      child: InkWell(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        onTap: () => Get.to(
            () => ScreenPlaying(
                  // allSongs: songPlayController.allSongs!,
                  currentIndex: songPlayController.playIndex.toInt(),
                ),
            transition: kNavigationTransition),
        child: PlayerBuilder.current(
          player: songPlayController.audioPlayer,
          builder: (context, playing) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 21.w),
                  child: SizedBox(
                    height: 42.w,
                    width: 42.w,
                    child: QueryArtworkWidget(
                      id: songPlayController.songId.toInt(),
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: CircleAvatar(
                        backgroundColor: kMainBlueColor,
                        child: Icon(
                          Icons.music_note,
                          size: 30.w,
                          color: kWhiteColor,
                        ),
                      ),
                      artworkFit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Center(
                    child: Obx(
                      () => Text(
                        songPlayController.currentSongTitle.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                    ),
                  ),
                ),
                PlayerBuilder.isPlaying(
                  player: songPlayController.audioPlayer,
                  builder: (context, isPlaying) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: IconButton(
                        onPressed: () {
                          songPlayController.audioPlayer.playOrPause();
                        },
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 38.sp,
                          color: kMainBlueColor,
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

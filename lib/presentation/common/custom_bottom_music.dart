import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';

class CustomBottomMusic extends StatelessWidget {
  final BuildContext context;
  CustomBottomMusic({super.key, required this.context});

  final player = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 1.3,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.w),
          topRight: Radius.circular(28.w),
        ),
        color: Theme.of(context).colorScheme.background,
      ),
      child: InkWell(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.w),
          topRight: Radius.circular(28.w),
        ),
        onTap: () => Get.to(
          () => ScreenPlaying(),
          transition: kTransitionDownToUp,
          duration: const Duration(
            milliseconds: 90,
          ),
        ),
        child: PlayerBuilder.current(
          player: player,
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
                      id: int.parse(
                        playing.audio.audio.metas.id.toString(),
                      ),
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
                    child: Text(
                      player.getCurrentAudioTitle,
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
                PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, isPlaying) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              player.previous();
                              if (isPlaying == false) {
                                player.pause();
                              }
                            },
                            icon: Icon(
                              Icons.skip_previous,
                              size: 30.sp,
                              color: kMainBlueColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              player.playOrPause();
                            },
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 30.sp,
                              color: kMainBlueColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              player.next();
                              if (isPlaying == false) {
                                player.pause();
                              }
                            },
                            icon: Icon(
                              Icons.skip_next,
                              size: 30.sp,
                              color: kMainBlueColor,
                            ),
                          ),
                        ],
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

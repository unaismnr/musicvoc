import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
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
        // border: Border.all(
        //   color: Theme.of(context).dividerColor,
        //   // width: 1.3,
        // ),
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
          () => const ScreenPlaying(),
          transition: kTransitionDownToUp,
          duration: const Duration(
            milliseconds: 100,
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
                      nullArtworkWidget: const CircleAvatar(
                        backgroundColor: kMainBlueColor,
                        child: Icon(
                          Icons.music_note,
                          size: 30,
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
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                  ),
                ),
                PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, isPlaying) {
                    final song = player.current.value!.audio.audio.metas;
                    final recentlyPlayedSong = RecentlyPlayedModel(
                      title: song.title!,
                      artist: song.artist!,
                      songUri: player.current.value!.audio.audio.path,
                      id: int.parse(song.id.toString()),
                      time: DateTime.now(),
                    );
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () async {
                              context.read<RecentlyPlayedBloc>().add(
                                    RecentlyPlayedEvent.addRecentlyPlayed(
                                      recentlyPlayedSong,
                                    ),
                                  );
                              await player.previous();
                              if (isPlaying == false) {
                                player.pause();
                              }
                            },
                            icon: const Icon(
                              Icons.skip_previous,
                              size: 30,
                              color: kMainBlueColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              player.playOrPause();
                            },
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                              size: 30,
                              color: kMainBlueColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              context.read<RecentlyPlayedBloc>().add(
                                    RecentlyPlayedEvent.addRecentlyPlayed(
                                      recentlyPlayedSong,
                                    ),
                                  );
                              await player.next();
                              if (isPlaying == false) {
                                player.pause();
                              }
                            },
                            icon: const Icon(
                              Icons.skip_next,
                              size: 30,
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

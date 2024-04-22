import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/favorite_songs_bloc/favorite_songs_bloc.dart';
import 'package:musicvoc/application/loop_and_shuffle_bloc/loop_and_shuffle_bloc.dart';
import 'package:musicvoc/controllers/adjust_speed_text.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/favorite_model.dart';
import 'package:musicvoc/presentation/now_playing/playing_screen_functions.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ScreenPlaying extends StatelessWidget {
  ScreenPlaying({
    super.key,
  });

  final player = AssetsAudioPlayer.withId('0');
  bool isRepeat = false;

  final songSpeedTextController = Get.put(
    AdjustSpeedText(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: const Text(
          "Now Playing",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
          child: player.builderCurrent(
            builder: (context, playing) {
              final currentSongDetails = playing.audio.audio.metas;
              return Column(
                children: [
                  //Song Image
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 260.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.w),
                        color: kMainBlueColor),
                    child: QueryArtworkWidget(
                      id: int.parse(
                        currentSongDetails.id.toString(),
                      ),
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: Icon(
                        Icons.music_note,
                        size: 120.sp,
                        color: const Color.fromARGB(255, 80, 138, 255),
                      ),
                      artworkFit: BoxFit.cover,
                    ),
                  ),
                  kHeight10,

                  //Song Title & Sub Title
                  Text(
                    player.getCurrentAudioTitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  Text(
                    player.getCurrentAudioArtist == '<unknown>'
                        ? 'Unknown Artist'
                        : player.getCurrentAudioArtist,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                  kHeight10,

                  //Volume, Favorite & Add To Playlist Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          PlayingScreenFunctions().showVolumeDialog(context);
                        },
                        icon: Icon(Icons.volume_up, size: 35.sp),
                      ),
                      BlocBuilder<FavoriteSongsBloc, FavoriteSongsState>(
                        builder: (context, state) {
                          final fvDbSongs = state.favoriteSongs;
                          final isAlreadyInFvDbSongs =
                              fvDbSongs.firstWhereOrNull(
                            (element) =>
                                element.id ==
                                int.parse(
                                  currentSongDetails.id.toString(),
                                ),
                          );
                          return IconButton(
                            onPressed: () {
                              final favSongs = FavoriteModel(
                                title: currentSongDetails.title!,
                                artist: currentSongDetails.artist!,
                                songUri: player
                                    .current.valueOrNull!.audio.audio.path,
                                id: int.parse(currentSongDetails.id.toString()),
                              );
                              if (isAlreadyInFvDbSongs != null) {
                                context.read<FavoriteSongsBloc>().add(
                                    FavoriteSongsEvent.deleteFavorite(
                                        favSongs));
                                toastMessege(context, 'Deleted from Favorite');
                              } else {
                                context.read<FavoriteSongsBloc>().add(
                                    FavoriteSongsEvent.addFavorite(favSongs));
                                toastMessege(context, 'Added to Favorite');
                              }
                              context
                                  .read<FavoriteSongsBloc>()
                                  .add(const FavoriteSongsEvent.getFavorite());
                            },
                            icon: Icon(
                              isAlreadyInFvDbSongs != null
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              size: 35.sp,
                              color: isAlreadyInFvDbSongs != null
                                  ? kMainBlueColor
                                  : Theme.of(context).iconTheme.color,
                            ),
                          );
                        },
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, size: 35.sp),
                      ),
                    ],
                  ),

                  //Speed Button
                  TextButton(
                    onPressed: () {
                      PlayingScreenFunctions().showSpeedDialog(context);
                    },
                    child: Obx(
                      () => Text(
                        '${songSpeedTextController.speed.value}x',
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  //Song Progress Bar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: PlayerBuilder.realtimePlayingInfos(
                        player: player,
                        builder: (context, audioTime) {
                          final duration = audioTime.current!.audio.duration;
                          final currentPosition = audioTime.currentPosition;
                          return ProgressBar(
                            baseBarColor: Theme.of(context).iconTheme.color,
                            thumbColor: kMainBlueColor,
                            progressBarColor: kMainBlueColor,
                            progress: currentPosition,
                            total: duration,
                            onSeek: (duration) async {
                              await player.seek(duration);
                            },
                            timeLabelTextStyle: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
                            ),
                          );
                        }),
                  ),
                  kHeight10,

                  //Previous, Next, 10 Back & Forward and Play & Puase
                  PlayerBuilder.isPlaying(
                      player: player,
                      builder: (context, isPlaying) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () async {
                                await player.previous();
                                if (isPlaying == false) {
                                  player.pause();
                                }
                              },
                              icon: Icon(Icons.skip_previous, size: 35.sp),
                            ),
                            IconButton(
                              onPressed: () async {
                                await player
                                    .seekBy(const Duration(seconds: -10));
                              },
                              icon: Icon(Icons.replay_10, size: 35.sp),
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: kMainBlueColor,
                              child: Center(
                                child: IconButton(
                                  onPressed: () async {
                                    await player.playOrPause();
                                  },
                                  icon: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow,
                                    size: 35.sp,
                                    color: kWhiteColor,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                await player
                                    .seekBy(const Duration(seconds: 10));
                              },
                              icon: Icon(Icons.forward_10, size: 35.sp),
                            ),
                            IconButton(
                              onPressed: () async {
                                await player.next();
                                if (isPlaying == false) {
                                  player.pause();
                                }
                              },
                              icon: Icon(Icons.skip_next, size: 35.sp),
                            ),
                          ],
                        );
                      }),
                  kHeight10,
                  BlocBuilder<LoopAndShuffleBloc, LoopAndShuffleState>(
                    builder: (context, state) {
                      bool isShuffle = state.shuffle;
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (isRepeat) {
                                  player.setLoopMode(LoopMode.none);
                                  context.read<LoopAndShuffleBloc>().add(
                                        const LoopAndShuffleEvent.loopToggle(),
                                      );
                                  isRepeat = false;
                                } else {
                                  player.setLoopMode(LoopMode.single);
                                  context.read<LoopAndShuffleBloc>().add(
                                        const LoopAndShuffleEvent.loopToggled(),
                                      );
                                  isRepeat = true;
                                }
                              },
                              icon: Icon(
                                Icons.repeat,
                                size: 30.sp,
                                color: state.loop == LoopMode.single
                                    ? kMainBlueColor
                                    : Theme.of(context).iconTheme.color,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context.read<LoopAndShuffleBloc>().add(
                                      const LoopAndShuffleEvent.shuffleToggle(),
                                    );
                                player.toggleShuffle();
                              },
                              icon: Icon(
                                Icons.shuffle,
                                size: 30.sp,
                                color: isShuffle
                                    ? kMainBlueColor
                                    : Theme.of(context).iconTheme.color,
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
      ),
    );
  }
}

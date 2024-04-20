import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/loop_and_shuffle_bloc/loop_and_shuffle_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/controllers/audio_player_controller.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ScreenPlaying extends StatelessWidget {
  final List<SongModel>? allSongs;
  final int? currentIndex;
  ScreenPlaying({
    super.key,
    this.allSongs,
    this.currentIndex,
  });

  // final player = AssetsAudioPlayer.withId('0');
  bool isRepeat = false;

  final songPlayController = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: 30.sp,
          ),
        ),
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
          child: songPlayController.audioPlayer.builderCurrent(
            builder: (context, playing) {
              final songPlayControllerIndex =
                  allSongs != null && allSongs!.isNotEmpty
                      ? allSongs![songPlayController.playIndex.value]
                      : null;

              //Listen to the current playing song
              if (songPlayControllerIndex != null) {
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
                        id: songPlayControllerIndex.id,
                        // int.parse(playing.audio.audio.metas.id.toString()),
                        type: ArtworkType.AUDIO,
                        nullArtworkWidget: const Icon(
                          Icons.music_note,
                          size: 120,
                          color: Color.fromARGB(255, 80, 138, 255),
                        ),
                        artworkFit: BoxFit.cover,
                      ),
                    ),
                    kHeight10,
                    //Song Title & Sub Title
                    Text(
                      // playing,
                      songPlayControllerIndex.title,
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
                      songPlayControllerIndex.artist == '<unknown>'
                          ? 'Unknown Artist'
                          : songPlayControllerIndex.artist!,
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
                    //Sound, Volume & Add Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.volume_up, size: 35.sp),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline, size: 35.sp),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, size: 35.sp),
                        ),
                      ],
                    ),
                    //Speed Button
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '1.3 x ',
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    //Song Progress Bar
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: PlayerBuilder.realtimePlayingInfos(
                          player: songPlayController.audioPlayer,
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
                                await songPlayController.audioPlayer
                                    .seek(duration);
                              },
                              timeLabelTextStyle: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                            );
                          }),
                    ),
                    kHeight10,
                    //Previous, Next, 10 Back & Forward and Play & Puase
                    PlayerBuilder.isPlaying(
                        player: songPlayController.audioPlayer,
                        builder: (context, isPlaying) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  final newIndex =
                                      songPlayController.playIndex.value - 1;

                                  if (newIndex < allSongs!.length) {
                                    songPlayController.playSong(
                                      allSongs![songPlayController
                                                  .playIndex.value -
                                              1]
                                          .uri!,
                                      allSongs![songPlayController
                                                  .playIndex.value -
                                              1]
                                          .id,
                                      allSongs![songPlayController
                                                  .playIndex.value -
                                              1]
                                          .title,
                                      newIndex,
                                      // songList: allSongs,
                                    );
                                  }
                                },
                                icon: Icon(Icons.skip_previous, size: 35.sp),
                              ),
                              IconButton(
                                onPressed: () {
                                  songPlayController.audioPlayer
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
                                      await songPlayController.audioPlayer
                                          .playOrPause();
                                    },
                                    icon: Icon(
                                      isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 35.sp,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  songPlayController.audioPlayer
                                      .seekBy(const Duration(seconds: 10));
                                },
                                icon: Icon(Icons.forward_10, size: 35.sp),
                              ),
                              IconButton(
                                onPressed: () {
                                  final newIndex =
                                      songPlayController.playIndex.value + 1;

                                  newIndex < allSongs!.length
                                      ? songPlayController.playSong(
                                          allSongs![songPlayController
                                                      .playIndex.value +
                                                  1]
                                              .uri!,
                                          allSongs![songPlayController
                                                      .playIndex.value +
                                                  1]
                                              .id,
                                          allSongs![songPlayController
                                                      .playIndex.value +
                                                  1]
                                              .title,
                                          newIndex,
                                          // songList: allSongs,
                                        )
                                      : songPlayController.playSong(
                                          allSongs![0].uri!,
                                          allSongs![0].id,
                                          allSongs![0].title,
                                          0,
                                          // songList: allSongs,
                                        );
                                },
                                icon: Icon(Icons.skip_next, size: 35.sp),
                              ),
                            ],
                          );
                        }),
                    kHeight10,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BlocBuilder<LoopAndShuffleBloc, LoopAndShuffleState>(
                            builder: (context, state) {
                              return IconButton(
                                onPressed: () {
                                  if (isRepeat) {
                                    songPlayController.audioPlayer
                                        .setLoopMode(LoopMode.none);
                                    context.read<LoopAndShuffleBloc>().add(
                                          const LoopAndShuffleEvent.toggle(),
                                        );
                                    isRepeat = false;
                                  } else {
                                    songPlayController.audioPlayer
                                        .setLoopMode(LoopMode.single);
                                    context.read<LoopAndShuffleBloc>().add(
                                          const LoopAndShuffleEvent.toggled(),
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
                              );
                            },
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shuffle, size: 30.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return const Center(
                child: Text('Error'),
              );
            },
          ),
        ),
      ),
    );
  }
}

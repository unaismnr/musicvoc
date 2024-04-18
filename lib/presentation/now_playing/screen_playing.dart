import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ScreenPlaying extends StatelessWidget {
  ScreenPlaying({super.key});

  final player = AssetsAudioPlayer.withId('0');

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
          child: PlayerBuilder.current(
              player: player,
              builder: (context, playing) {
                //Listen to the current playing song
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
                        id: int.parse(playing.audio.audio.metas.id.toString()),
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
                      playing.audio.audio.metas.title!,
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
                      playing.audio.audio.metas.artist! == '<unknown>'
                          ? 'Unknown Artist'
                          : playing.audio.audio.metas.artist!,
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
                        player: player,
                        builder: (context, isPlaying) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  if (isPlaying == true) {
                                    player.pause();
                                  }
                                  await player.previous();
                                },
                                icon: Icon(Icons.skip_previous, size: 35.sp),
                              ),
                              IconButton(
                                onPressed: () {
                                  player.seekBy(const Duration(seconds: -10));
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
                                  player.seekBy(const Duration(seconds: 10));
                                },
                                icon: Icon(Icons.forward_10, size: 35.sp),
                              ),
                              IconButton(
                                onPressed: () {
                                  player.next();

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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.repeat, size: 30.sp),
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
              }),
        ),
      ),
    );
  }
}

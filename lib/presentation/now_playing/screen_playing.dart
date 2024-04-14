import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/songs_model.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class ScreenPlaying extends StatelessWidget {
  final SongsModel song;
   ScreenPlaying({super.key, required this.song});

  final player = AssetsAudioPlayer();

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
          child: player.builderCurrent(
            builder: (context, playing) {
              return Column(
                children: [
                  //Song Image
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    height: 220.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      color: kMainBlueColor,
                    ),
                    child: QueryArtworkWidget(
                      id: song.id,
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: const Icon(
                        Icons.music_note,
                        size: 35,
                      ),
                    ),
                  ),
                  kHeight20,
                  //Song Title & Sub Title
                  Text(
                  song.songName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  Text(
                    song.artist,
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                  kHeight20,
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
                  kHeight10,
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
                  kHeight10,
                  //Song Progress Bar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: ProgressBar(
                      baseBarColor: Theme.of(context).iconTheme.color,
                      thumbColor: kMainBlueColor,
                      progressBarColor: kMainBlueColor,
                      progress: Duration.zero,
                      total: Duration.zero,
                      timeLabelTextStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                    ),
                  ),
                  kHeight20,
                  //Previous, Next, 10 Back & Forward and Play & Puase
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_previous, size: 35.sp),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.replay_10, size: 35.sp),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: kMainBlueColor,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                            },
                            icon: Icon(
                              Icons.play_arrow,
                              size: 35.sp,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.forward_10, size: 35.sp),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_next, size: 35.sp),
                      ),
                    ],
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}

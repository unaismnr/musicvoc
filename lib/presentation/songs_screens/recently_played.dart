import 'package:flutter/material.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return songsListWidget(
      'Songs Name Here',
      'Movie',
      () {},
      20,
      () {
        // Navigator.of(context).push(
        //           MaterialPageRoute(
        //             builder: (context) => const ScreenPlaying(song: ,),
        //           ),
        //         );
      },
      true,
    );
  }
}

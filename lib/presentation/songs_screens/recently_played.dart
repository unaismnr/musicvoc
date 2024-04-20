import 'package:flutter/material.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recently Played'),
        centerTitle: true,
      ),
      body: songsListWidget(
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
        context,
      ),
      bottomSheet: CustomBottomMusic2(context: context),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';

class MostlyPlayed extends StatelessWidget {
  const MostlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mostly Played'),
        centerTitle: true,
      ),
      body: songsListWidget(
        'Songs Name Here',
        'Movie',
        () {},
        20,
        () {},
        true,
        context,
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

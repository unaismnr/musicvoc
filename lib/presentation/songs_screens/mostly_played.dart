import 'package:flutter/material.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';

class MostlyPlayed extends StatelessWidget {
  const MostlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return songsListWidget(
      'Songs Name Here',
      'Movie',
      () {},
      20,
      () {},
      true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musicvoc/view/common/songs_list_widget.dart';

class AllSongs extends StatelessWidget {
  const AllSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return songsListWidget(
      'Songs Name Here',
      'Movie',
      () {},
      20,
      () {},
      false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musicvoc/view/home/widgets/songs_list_widget.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return songsListWidget(
      'Songs Name Here',
      'Movie',
      () {},
      20,
      () {},
    );
  }
}

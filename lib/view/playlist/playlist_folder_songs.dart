import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicvoc/view/common/custom_appbar.dart';

class PlaylistFolderSongs extends StatelessWidget {
  const PlaylistFolderSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        () {
          Get.back();
        },
        'Folder Name',
      ),
    );
  }
}

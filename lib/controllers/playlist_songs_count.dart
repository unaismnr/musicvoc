import 'package:get/get.dart';

class PlaylistSongsCount extends GetxController {
  Rx<int> playlistSongsCount = 0.obs;

  void changePlaylistSongsCount(int count) {
    playlistSongsCount.value = count;
  }
}

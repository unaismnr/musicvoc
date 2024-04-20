import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AudioPlayerController extends GetxController {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  var playIndex = 0.obs;
  var currentSongTitle = ''.obs;
  var songId = 0.obs;
  var currentlyPlayingIndex = -1;
  // List<SongModel>? allSongs;

  void playSong(
    String uri,
    int id,
    String title,
    index,
    // {required List<SongModel> songList}
  ) async {
    playIndex.value = index;
    currentSongTitle.value = title;
    songId.value = id;
    currentlyPlayingIndex = index;
    // allSongs = songList;
    log(currentSongTitle.toString());
    try {
      await audioPlayer.open(
        Audio.file(
          uri,
          metas: Metas(
            id: id.toString(),
            title: title,
          ),
        ),
      );

      await audioPlayer.play();
    } catch (e) {
      log('Play Error: $e');
    }
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}

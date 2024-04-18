import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class AudioPlayerController extends GetxController {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');

  void playSong(String uri, String id, String title, String artist) async {
    try {
      await audioPlayer.open(
        Audio.file(
          uri,
          metas: Metas(
            id: id,
            title: title,
            artist: artist,
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

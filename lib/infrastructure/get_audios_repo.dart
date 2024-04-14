import 'dart:developer';

import 'package:musicvoc/domain/songs_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class GetAudiosRepo {
  Future<List<SongsModel>> getAudios() async {
  final audioQuery = OnAudioQuery();
  try {
    final songs = await audioQuery.querySongs();
    return songs
        .map((song) => SongsModel(
            song.displayName, song.artist.toString(), song.duration!, song.id))
        .toList();
  } catch (e) {
    log(e.toString());
  }
  return [];
}
}

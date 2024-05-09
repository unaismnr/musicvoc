import 'dart:developer';
import 'package:on_audio_query/on_audio_query.dart';

class GetAudiosRepo {
  static Future<List<SongModel>> getAudios() async {
    final audioQuery = OnAudioQuery();
    try {
      final songs = await audioQuery.querySongs(
        sortType: null,
        orderType: OrderType.ASC_OR_SMALLER,
        uriType: UriType.EXTERNAL,
        ignoreCase: true,
      );
      return songs;
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}

Future<List<SongModel>> getAudios() async {
  final audioQuery = OnAudioQuery();
  try {
    final songs = await audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    return songs;
  } catch (e) {
    log(e.toString());
  }
  return [];
}

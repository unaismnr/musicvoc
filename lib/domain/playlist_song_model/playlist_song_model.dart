import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart';

@HiveType(typeId: 3)
class PlaylistSongModel {
  @HiveField(0)
  String playlistName;

  @HiveField(1)
  List<SongModel> playlistSongs;

  PlaylistSongModel({
    required this.playlistName,
    required this.playlistSongs,
  });
}

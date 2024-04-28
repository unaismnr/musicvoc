import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/song_model.dart';
part 'playlist_song_model.g.dart';

@HiveType(typeId: 3)
class PlaylistSongModel {
  @HiveField(0)
  String playlistName;

  @HiveField(1)
  List<SongsModel> playlistSongs;

  PlaylistSongModel({
    required this.playlistName,
    required this.playlistSongs,
  });
}

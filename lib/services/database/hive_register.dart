import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/domain/songs_model/songs_model.dart';

void hiveRegister() {
  if (!Hive.isAdapterRegistered(FavoriteModelAdapter().typeId)) {
    Hive.registerAdapter(FavoriteModelAdapter());
  }
  if (!Hive.isAdapterRegistered(RecentlyPlayedModelAdapter().typeId)) {
    Hive.registerAdapter(RecentlyPlayedModelAdapter());
  }
  if (!Hive.isAdapterRegistered(PlaylistSongModelAdapter().typeId)) {
    Hive.registerAdapter(PlaylistSongModelAdapter());
  }
  if (!Hive.isAdapterRegistered(SongsModelAdapter().typeId)) {
    Hive.registerAdapter(SongsModelAdapter());
  }
  if (!Hive.isAdapterRegistered(MostlyPlayedModelAdapter().typeId)) {
    Hive.registerAdapter(MostlyPlayedModelAdapter());
  }
}

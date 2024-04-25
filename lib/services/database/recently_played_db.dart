import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';

class RecentlyPlayedDb {
  static const recentlyPlayedDbName = 'RecentlyPlayedD';
  late Box<RecentlyPlayedModel> recentlyPlayedDb;

  RecentlyPlayedDb.internal();
  static RecentlyPlayedDb instance = RecentlyPlayedDb.internal();
  factory RecentlyPlayedDb() => instance;

  Future<void> openBox() async {
    recentlyPlayedDb =
        await Hive.openBox<RecentlyPlayedModel>(recentlyPlayedDbName);
  }

  Future<List<RecentlyPlayedModel>> getRecentlyPlayed() async {
    await openBox();
    final List<RecentlyPlayedModel> songs = recentlyPlayedDb.values.toList();
    songs.sort((a, b) => b.time.compareTo(a.time));
    return songs;
  }

  Future<void> addRecentlyPlayed(RecentlyPlayedModel recSong) async {
    await openBox();

    final songs = recentlyPlayedDb.values.toList();

    final isAlready =
        songs.where((element) => element.id == recSong.id).isEmpty;

    if (isAlready == true) {
      await recentlyPlayedDb.put(recSong.id, recSong);
    } else {
      final checkedSong = songs.indexWhere(
        (element) => element.id == recSong.id,
      );
      recentlyPlayedDb.deleteAt(checkedSong);
      await recentlyPlayedDb.put(recSong.id, recSong);
    }
    await getRecentlyPlayed();
  }

  Future<void> deleteRecentlyPlayed(RecentlyPlayedModel recSong) async {
    await openBox();
    await recentlyPlayedDb.delete(recSong.id);
    await getRecentlyPlayed();
  }
}

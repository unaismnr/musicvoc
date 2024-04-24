import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';

class FavoriteDb {
  static String favoriteDbName = "favoriteDb";
  late Box<FavoriteModel> favoriteDb;

  FavoriteDb.internal();
  static FavoriteDb instance = FavoriteDb.internal();
  factory FavoriteDb() => instance;

  Future<void> openBox() async {
    favoriteDb = await Hive.openBox<FavoriteModel>(favoriteDbName);
  }

  Future<List<FavoriteModel>> getFavoriteSongs() async {
    await openBox();
    return favoriteDb.values.toList();
  }

  Future<void> addFavoriteSongs(FavoriteModel song) async {
    await openBox();

    final songs = favoriteDb.values.toList();

    final isAlready = songs.where((element) => element.id == song.id).isEmpty;
    if (isAlready == true) {
      await favoriteDb.put(song.id, song);
    } else {
      final checkedSong = songs.indexWhere(
        (element) => element.id == song.id,
      );
      await favoriteDb.deleteAt(checkedSong);
      await favoriteDb.put(song.id, song);
    }
    await getFavoriteSongs();
  }

  Future<void> deleteFavoriteSongs(FavoriteModel song) async {
    await openBox();
    await favoriteDb.delete(song.id);
    await getFavoriteSongs();
  }
}

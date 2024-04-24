import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';

void hiveRegister() {
  if (!Hive.isAdapterRegistered(FavoriteModelAdapter().typeId)) {
    Hive.registerAdapter(FavoriteModelAdapter());
  }
  if (!Hive.isAdapterRegistered(RecentlyPlayedModelAdapter().typeId)) {
    Hive.registerAdapter(RecentlyPlayedModelAdapter());
  }
}

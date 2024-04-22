import 'package:hive_flutter/hive_flutter.dart';
part 'favorite_model.g.dart';

@HiveType(typeId: 1)
class FavoriteModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String artist;

  // @HiveField(2)
  // Duration duration;

  @HiveField(3)
  String songUri;

  @HiveField(4)
  int id;

  FavoriteModel({
    required this.title,
    required this.artist,
    // required this.duration,
    required this.songUri,
    required this.id,
  });
}

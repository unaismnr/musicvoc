import 'package:hive_flutter/hive_flutter.dart';
part 'favorite_model.g.dart';

@HiveType(typeId: 1)
class FavoriteModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String artist;

  @HiveField(3)
  String songUri;

  @HiveField(4)
  int id;

  @HiveField(5)
  DateTime time;

  FavoriteModel({
    required this.title,
    required this.artist,
    required this.songUri,
    required this.id,
    required DateTime? time,
  }) : time = time ?? DateTime.now();
}

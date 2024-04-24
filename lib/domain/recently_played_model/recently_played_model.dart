import 'package:hive_flutter/hive_flutter.dart';
part 'recently_played_model.g.dart';

@HiveType(typeId: 2)
class RecentlyPlayedModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String artist;

  @HiveField(2)
  String songUri;

  @HiveField(3)
  int id;

  RecentlyPlayedModel({
    required this.title,
    required this.artist,
    required this.songUri,
    required this.id,
  });
}

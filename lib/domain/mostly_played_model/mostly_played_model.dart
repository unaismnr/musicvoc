import 'package:hive_flutter/hive_flutter.dart';
part 'mostly_played_model.g.dart';

@HiveType(typeId: 5)
class MostlyPlayedModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String artist;

  @HiveField(2)
  String songUri;

  @HiveField(3)
  int id;

  @HiveField(4)
  int playCount = 0;

  MostlyPlayedModel({
    required this.title,
    required this.artist,
    required this.songUri,
    required this.id,
  });
}

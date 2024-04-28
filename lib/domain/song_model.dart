import 'package:hive_flutter/hive_flutter.dart';
part 'song_model.g.dart';

@HiveType(typeId: 4)
class SongsModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String artist;

  @HiveField(2)
  String songUri;

  @HiveField(3)
  int id;

  @HiveField(4)
  DateTime time;

  SongsModel({
    required this.title,
    required this.artist,
    required this.songUri,
    required this.id,
    required DateTime? time,
  }) : time = time ?? DateTime.now();
}

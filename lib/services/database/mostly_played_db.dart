import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';

class MostlyPlayedDb {
  static String mostlyPlayedDbName = "MostlyPlayedDb";
  late Box<MostlyPlayedModel> mostlyPlayedDb;

  MostlyPlayedDb.internal();
  static MostlyPlayedDb instance = MostlyPlayedDb.internal();
  factory MostlyPlayedDb() => instance;

  Future<void> openBox() async {
    mostlyPlayedDb = await Hive.openBox<MostlyPlayedModel>(mostlyPlayedDbName);
  }

  Future<List<MostlyPlayedModel>> getMostlyPlayed() async {
    await openBox();
    final List<MostlyPlayedModel> songs = mostlyPlayedDb.values.toList();
    songs.sort((a, b) => b.playCount.compareTo(a.playCount));
    return songs.take(10).toList();
  }

  Future<void> addMostlyPlayed(MostlyPlayedModel song) async {
    await openBox();

    final existingSong = mostlyPlayedDb.get(song.id);
    if (existingSong != null) {
      song.playCount = existingSong.playCount + 1;
    } else {
      song.playCount = 1;
    }
    await mostlyPlayedDb.put(song.id, song);
    log(song.id.toString());
  }

  Future<void> deleteMostlyPlayed(int songId) async {
    await openBox();
    await mostlyPlayedDb.delete(songId);
    log(songId.toString());
    await getMostlyPlayed();
  }
}

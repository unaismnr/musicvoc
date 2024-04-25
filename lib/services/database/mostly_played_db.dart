import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';

class MostlyPlayedDb {
  static String mostlyPlayedDbName = "Mostly Played Db";
  late Box<MostlyPlayedModel> mostlyPlayedDb;

  Future<void> openBox() async {
    mostlyPlayedDb = await Hive.openBox<MostlyPlayedModel>(mostlyPlayedDbName);
  }

  Future<List<MostlyPlayedModel>> getMostlyPlayed ()async{
    await openBox();
    final List<MostlyPlayedModel> songs = mostlyPlayedDb.values.toList();
    songs.sort((a,b)=> b.playCount.compareTo(a.playCount));
    return songs;
  }

  Future<void> addMostlyPlayed (MostlyPlayedModel mostlyPlayed)async{
    await openBox();
    final songs = mostlyPlayedDb.values.toList();
    final isAlready = songs.where((element) => element.id == mostlyPlayed.id).isEmpty; 

  }
}

import 'package:flutter/material.dart';
import 'package:musicvoc/services/audio_service/get_audios_repo.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SearchQueryController extends ChangeNotifier {
  List<SongModel>? _allSongs;
  List<SongModel>? _displayedSongs;

  List<SongModel>? get displayedProducts => _displayedSongs;

  SearchQueryController() {
    fetchSongs();
  }

  Future<void> fetchSongs() async {
    _allSongs = await GetAudiosRepo.getAudios();
    _displayedSongs = _allSongs;
    notifyListeners();
  }

  void searchSongs(String query) {
    if (query.isEmpty) {
      _displayedSongs = _allSongs;
    } else {
      _displayedSongs = _allSongs!
          .where((song) => song.title.toLowerCase().contains(
                query.toLowerCase(),
              ))
          .toList();
    }
    notifyListeners();
  }
}

// class SearchQueryController extends GetxController {
//   RxList<SongModel> searchResults = RxList<SongModel>();

//   void setAllSongs(List<SongModel> songs) {
//     searchResults.addAll(songs);
//   }

//   void search(String query, List<SongModel> allSongs) {
//     searchResults.clear();
//     if (query.isEmpty) {
//       searchResults.value = allSongs.obs;
//     } else {
//       searchResults.value = allSongs
//           .where((song) => song.title.toLowerCase().contains(
//                 query.toLowerCase(),
//               ))
//           .toList()
//           .obs;
//     }
//   }
// }

import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SearchQueryController extends GetxController {
  RxList<SongModel> searchResults = RxList<SongModel>();

  void setAllSongs(List<SongModel> songs) {
    searchResults.addAll(songs);
  }

  void search(String quary, List<SongModel> allSongs) {
    searchResults.clear();
    if (quary.isEmpty) {
      return;
    } else {
      searchResults.addAll(allSongs.where(
        (song) => song.title.toLowerCase().contains(
              quary.toLowerCase(),
            ),
      ));
    }
  }
}

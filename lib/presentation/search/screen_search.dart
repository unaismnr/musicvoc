import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/controllers/search_controller.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/custom_bottom_sheet_on_more.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final player = AssetsAudioPlayer.withId('0');
  final List<Audio> convertedAudios = [];
  final searchController = Get.put(SearchQueryController());

  @override
  Widget build(BuildContext context) {
    final allSongs = context.watch<AllSongsBloc>().state.allSongs;
    searchController.setAllSongs(allSongs);
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSearchTextField(
          onChanged: (query) {
            searchController.search(query, allSongs);
          },
          prefixIcon: const SizedBox(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 5.h),
          Expanded(
            child: SongsListStaticWidgets.container(
              Obx(() {
                final searchResults = searchController.searchResults;
                if (searchResults.isEmpty) {
                  return const Center(
                    child: Text('No Reusults'),
                  );
                } else {
                  return ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        final searchSongs = searchResults[index];

                        return PlayerBuilder.isPlaying(
                            player: player,
                            builder: (context, playing) {
                              final isCurrentlyPlaying = player
                                      .current.valueOrNull?.audio.audio.path ==
                                  searchSongs.uri;
                              return SongsListStaticWidgets.listTile(
                                context,
                                searchSongs.title,
                                searchSongs.artist == '<unknown>'
                                    ? 'Unknown Artist'
                                    : searchSongs.artist!,
                                isCurrentlyPlaying
                                    ? kSelectedTextColor
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!,
                                false,
                                () {
                                  context.read<PlaylistBloc>().add(
                                        const PlaylistEvent.getPlaylist(),
                                      );
                                  customBottomSheetOnMoreIcon(
                                      context, searchSongs);
                                },
                                () {
                                  playerOnTap(
                                    searchResults,
                                    convertedAudios,
                                  );
                                  player.open(
                                    Playlist(
                                      audios: convertedAudios,
                                      startIndex: index,
                                    ),
                                    loopMode: LoopMode.playlist,
                                    autoStart: true,
                                    headPhoneStrategy:
                                        HeadPhoneStrategy.pauseOnUnplug,
                                  );
                                  final recentlyPlayedSong =
                                      RecentlyPlayedModel(
                                    title: searchSongs.title,
                                    artist: searchSongs.artist!,
                                    songUri: searchSongs.uri!,
                                    id: searchSongs.id,
                                    time: DateTime.now(),
                                  );
                                  context.read<RecentlyPlayedBloc>().add(
                                        RecentlyPlayedEvent.addRecentlyPlayed(
                                          recentlyPlayedSong,
                                        ),
                                      );
                                },
                                searchSongs.id,
                              );
                            });
                      });
                }
              }),
              context,
            ),
          ),
        ],
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

void playerOnTap(
  List<SongModel> allSongs,
  List<Audio> convertedAudios,
) {
  convertedAudios.clear();
  for (var item in allSongs) {
    convertedAudios.add(
      Audio.file(item.uri!,
          metas: Metas(
            title: item.title,
            artist: item.artist,
            id: item.id.toString(),
            image: const MetasImage.asset(
              'assets/musicvoc-logo.jpg',
            ),
          )),
    );
  }
}

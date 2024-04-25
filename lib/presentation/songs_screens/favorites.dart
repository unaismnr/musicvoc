import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicvoc/application/favorite_songs_bloc/favorite_songs_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Expanded(
            child: SongsListStaticWidgets.container(
              favoriteSongsList(),
              context,
            ),
          ),
        ],
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

Widget favoriteSongsList() {
  final player = AssetsAudioPlayer.withId('0');
  final List<Audio> convertedAudios = [];
  return BlocBuilder<FavoriteSongsBloc, FavoriteSongsState>(
    builder: (context, state) {
      if (state.favoriteSongs.isEmpty) {
        return const Center(
          child: Text('Empty'),
        );
      } else {
        return ListView.builder(
            itemCount: state.favoriteSongs.length,
            itemBuilder: (context, index) {
              final favSongs = state.favoriteSongs[index];

              return PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, playing) {
                    final isCurrentlyPlaying =
                        player.current.valueOrNull?.audio.audio.path ==
                            favSongs.songUri;
                    return SongsListStaticWidgets.listTile(
                      context,
                      favSongs.title,
                      favSongs.artist == '<unknown>'
                          ? 'Unknown Artist'
                          : favSongs.artist,
                      isCurrentlyPlaying
                          ? kSelectedTextColor
                          : Theme.of(context).textTheme.bodyLarge!.color!,
                      true,
                      () {
                        context.read<FavoriteSongsBloc>().add(
                              FavoriteSongsEvent.deleteFavorite(
                                favSongs,
                              ),
                            );
                        context.read<FavoriteSongsBloc>().add(
                              const FavoriteSongsEvent.getFavorite(),
                            );
                        toastMessege(context, 'Deleted From Favorite');
                      },
                      () {
                        playerOnTap(
                          state.favoriteSongs,
                          convertedAudios,
                        );
                        player.open(
                          Playlist(
                            audios: convertedAudios,
                            startIndex: index,
                          ),
                          loopMode: LoopMode.playlist,
                          autoStart: true,
                          headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplug,
                        );
                        final recentlyPlayedSong = RecentlyPlayedModel(
                          title: favSongs.title,
                          artist: favSongs.artist,
                          songUri: favSongs.songUri,
                          id: favSongs.id,
                          time: DateTime.now(),
                        );
                        context.read<RecentlyPlayedBloc>().add(
                              RecentlyPlayedEvent.addRecentlyPlayed(
                                recentlyPlayedSong,
                              ),
                            );
                      },
                      favSongs.id,
                    );
                  });
            });
      }
    },
  );
}

void playerOnTap(
  List<FavoriteModel> allSongs,
  List<Audio> convertedAudios,
) {
  for (var item in allSongs) {
    convertedAudios.add(
      Audio.file(item.songUri,
          metas: Metas(
            title: item.title,
            artist: item.artist,
            id: item.id.toString(),
          )),
    );
  }
}

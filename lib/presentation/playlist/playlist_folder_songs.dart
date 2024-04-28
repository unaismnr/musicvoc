import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/domain/song_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/presentation/playlist/add_songs_toPlaylist.dart';

class PlaylistFolderSongs extends StatelessWidget {
  final String title;
  PlaylistFolderSongs({
    super.key,
    required this.title,
  });

  final player = AssetsAudioPlayer.withId('0');
  final List<Audio> convertedAudios = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 5.h),
          Expanded(
            child: SongsListStaticWidgets.container(
              BlocBuilder<PlaylistBloc, PlaylistState>(
                builder: (context, state) {
                  final player = AssetsAudioPlayer.withId('0');
                  for (var item in state.getPlaylistByName) {
                    if (item.playlistSongs.isEmpty) {
                      return const Center(
                        child: Text('Empty'),
                      );
                    } else {
                      return ListView.builder(
                          itemCount: item.playlistSongs.length,
                          itemBuilder: (context, index) {
                            item.playlistSongs.sort((a, b) => b.time.compareTo(
                                  a.time,
                                ));
                            final playlistSongs = item.playlistSongs[index];

                            return PlayerBuilder.isPlaying(
                                player: player,
                                builder: (context, playing) {
                                  final isCurrentlyPlaying = player.current
                                          .valueOrNull?.audio.audio.path ==
                                      playlistSongs.songUri;
                                  return SongsListStaticWidgets.listTile(
                                    context,
                                    playlistSongs.title,
                                    playlistSongs.artist == '<unknown>'
                                        ? 'Unknown Artist'
                                        : playlistSongs.artist,
                                    isCurrentlyPlaying
                                        ? kSelectedTextColor
                                        : Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .color!,
                                    true,
                                    () {
                                      context.read<PlaylistBloc>().add(
                                            PlaylistEvent
                                                .deleteSongFromPlaylist(
                                              item.playlistName,
                                              playlistSongs,
                                            ),
                                          );

                                      context.read<PlaylistBloc>().add(
                                            PlaylistEvent.getPlaylistByName(
                                              item.playlistName,
                                            ),
                                          );

                                      context.read<PlaylistBloc>().add(
                                            const PlaylistEvent.getPlaylist(),
                                          );
                                    },
                                    () {
                                      playerOnTap(
                                        item.playlistSongs,
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
                                      // final recentlyPlayedSong = RecentlyPlayedModel(
                                      //   title: favSongs.title,
                                      //   artist: favSongs.artist,
                                      //   songUri: favSongs.songUri,
                                      //   id: favSongs.id,
                                      //   time: DateTime.now(),
                                      // );
                                      // context.read<RecentlyPlayedBloc>().add(
                                      //       RecentlyPlayedEvent.addRecentlyPlayed(
                                      //         recentlyPlayedSong,
                                      //       ),
                                      //     );
                                    },
                                    playlistSongs.id,
                                  );
                                });
                            // final playlistSongs = state.playlist[index].playlistSongs[index];
                          });
                    }
                  }
                  return const SizedBox();
                },
              ),
              context,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          child: Icon(
            Icons.add,
            color: Theme.of(context).iconTheme.color,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddSongsToPlaylist(
                  playlistName: title,
                ),
              ),
            );
          },
        ),
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }

  void playerOnTap(
    List<SongsModel> allSongs,
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
}

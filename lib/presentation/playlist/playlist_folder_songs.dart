import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/mostly_played_bloc/mostly_played_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/domain/songs_model/songs_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/navigation_helper.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/presentation/playlist/add_songs_toPlaylist.dart';
import 'package:musicvoc/services/database/playlist_db.dart';

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
    PlaylistDb.instance.refreshPlaylistFolderSongs(title);
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
              ValueListenableBuilder(
                  valueListenable: PlaylistDb.instance.playlistListner,
                  builder: (context, newList, _) {
                    bool anyPlaylistHasSongs = newList.any(
                      (element) => element.playlistSongs.isNotEmpty,
                    );

                    if (!anyPlaylistHasSongs) {
                      return const Center(
                        child: Text('No Songs'),
                      );
                    }

                    for (var item in newList) {
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
                                      PlaylistDb.instance
                                          .deleteSongFromPlaylist(
                                        item.playlistName,
                                        playlistSongs,
                                      );
                                      toastMessege(context,
                                          'Song Deleted from ${item.playlistName}');
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
                                      final recentlyPlayedSong =
                                          RecentlyPlayedModel(
                                        title: playlistSongs.title,
                                        artist: playlistSongs.artist,
                                        songUri: playlistSongs.songUri,
                                        id: playlistSongs.id,
                                        time: DateTime.now(),
                                      );
                                      context.read<RecentlyPlayedBloc>().add(
                                            RecentlyPlayedEvent
                                                .addRecentlyPlayed(
                                              recentlyPlayedSong,
                                            ),
                                          );
                                      final mostlyPlayedSong =
                                          MostlyPlayedModel(
                                        title: playlistSongs.title,
                                        artist: playlistSongs.artist,
                                        songUri: playlistSongs.songUri,
                                        id: playlistSongs.id,
                                      );
                                      context.read<MostlyPlayedBloc>().add(
                                            MostlyPlayedEvent.addMostlyPlayed(
                                              mostlyPlayedSong,
                                            ),
                                          );
                                    },
                                    playlistSongs.id,
                                  );
                                });
                          });
                    }
                    return const SizedBox();
                  }),
              context,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50.h, right: 10.w),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          child: Icon(
            Icons.add,
            color: Theme.of(context).iconTheme.color,
            size: 30,
          ),
          onPressed: () {
            NavigationHelper.pushRightToLeft(
              context,
              AddSongsToPlaylist(
                playlistName: title,
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
              image: const MetasImage.asset(
                'assets/musicvoc-logo-play.jpg',
              ),
            )),
      );
    }
  }
}

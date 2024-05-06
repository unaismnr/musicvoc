import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/application/mostly_played_bloc/mostly_played_bloc.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_sheet_on_more.dart';
import 'package:musicvoc/presentation/common/navigation_helper.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class AllSongs extends StatelessWidget {
  AllSongs({super.key});

  final player = AssetsAudioPlayer.withId('0');
  final List<Audio> convertedAudios = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllSongsBloc, AllSongsState>(
      builder: (context, state) {
        if (state.allSongs.isEmpty) {
          return const Center(
            child: Text('Loading'),
          );
        } else {
          return ListView.builder(
            itemBuilder: (context, index) {
              final songs = state.allSongs[index];
              final songArtist = state.allSongs[index].artist == '<unknown>'
                  ? 'Unknown Artist'
                  : state.allSongs[index].artist;

              return ListTile(
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: kMainBlueColor,
                  child: QueryArtworkWidget(
                    id: songs.id,
                    type: ArtworkType.AUDIO,
                    nullArtworkWidget: const Icon(
                      Icons.music_note,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: PlayerBuilder.isPlaying(
                    player: player,
                    builder: (context, isPlaying) {
                      final isCurrentlyPlayingSong =
                          player.current.valueOrNull?.audio.audio.path ==
                              songs.uri;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            songs.displayName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: isCurrentlyPlayingSong
                                  ? kSelectedTextColor
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                            ),
                          ),
                          Text(
                            songArtist.toString(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11,
                              color: isCurrentlyPlayingSong
                                  ? const Color.fromARGB(255, 105, 155, 255)
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                            ),
                          ),
                        ],
                      );
                    }),
                trailing: IconButton(
                  onPressed: () {
                    context.read<PlaylistBloc>().add(
                          const PlaylistEvent.getPlaylist(),
                        );
                    customBottomSheetOnMoreIcon(context, songs);
                  },
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
                onTap: () {
                  NavigationHelper.pushBottomToTop(
                    context,
                    const ScreenPlaying(),
                  );
                  playerOnTap(
                    state.allSongs,
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
                    showNotification: true,
                  );

                  final recentlyPlayedSong = RecentlyPlayedModel(
                    title: songs.title,
                    artist: songs.artist!,
                    songUri: songs.uri!,
                    id: songs.id,
                    time: DateTime.now(),
                  );
                  context.read<RecentlyPlayedBloc>().add(
                        RecentlyPlayedEvent.addRecentlyPlayed(
                          recentlyPlayedSong,
                        ),
                      );

                  final mostlyPlayedSong = MostlyPlayedModel(
                    title: songs.title,
                    artist: songs.artist!,
                    songUri: songs.uri!,
                    id: songs.id,
                  );
                  context.read<MostlyPlayedBloc>().add(
                        MostlyPlayedEvent.addMostlyPlayed(
                          mostlyPlayedSong,
                        ),
                      );
                },
              );
            },
            itemCount: state.allSongs.length,
          );
        }
      },
    );
  }
}

void playerOnTap(
  List<SongModel> allSongs,
  List<Audio> convertedAudios,
) {
  for (var item in allSongs) {
    convertedAudios.add(
      Audio.file(item.uri!,
          metas: Metas(
            title: item.title,
            artist: item.artist,
            id: item.id.toString(),
            image: const MetasImage.asset(
              'assets/musicvoc.jpg',
            ),
          )),
    );
  }
}

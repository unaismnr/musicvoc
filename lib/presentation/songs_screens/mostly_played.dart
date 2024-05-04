import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/mostly_played_bloc/mostly_played_bloc.dart';
import 'package:musicvoc/application/recently_played_bloc/recently_played_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';

class MostlyPlayed extends StatelessWidget {
  const MostlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MostlyPlayedBloc>().add(
          const MostlyPlayedEvent.getMostlyPlayed(),
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mostly Played'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Expanded(
            child: SongsListStaticWidgets.container(
              mostlyPlayedSongsList(),
              context,
            ),
          ),
        ],
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

Widget mostlyPlayedSongsList() {
  final player = AssetsAudioPlayer.withId('0');
  final List<Audio> convertedAudios = [];
  return BlocBuilder<MostlyPlayedBloc, MostlyPlayedState>(
    builder: (context, state) {
      if (state.mostlyPlayed.isEmpty) {
        return const Center(
          child: Text(
            'No Songs',
            textAlign: TextAlign.center,
          ),
        );
      } else {
        return ListView.builder(
            itemCount: state.mostlyPlayed.length,
            itemBuilder: (context, index) {
              final mostSongs = state.mostlyPlayed[index];

              return PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, playing) {
                    final isCurrentlyPlaying =
                        player.current.valueOrNull?.audio.audio.path ==
                            mostSongs.songUri;
                    return SongsListStaticWidgets.listTile(
                      context,
                      mostSongs.title,
                      mostSongs.artist == '<unknown>'
                          ? 'Unknown Artist'
                          : mostSongs.artist,
                      isCurrentlyPlaying
                          ? kSelectedTextColor
                          : Theme.of(context).textTheme.bodyLarge!.color!,
                      true,
                      () {
                        context.read<MostlyPlayedBloc>().add(
                              MostlyPlayedEvent.deleteMostlyPlayed(
                                mostSongs.id,
                              ),
                            );
                        context.read<MostlyPlayedBloc>().add(
                              const MostlyPlayedEvent.getMostlyPlayed(),
                            );
                        toastMessege(context, 'Deleted From MostlyPlayed');
                      },
                      () {
                        Get.to(
                          () => const ScreenPlaying(),
                          transition: kTransitionRightToLeft,
                          duration: const Duration(
                            milliseconds: 100,
                          ),
                        );
                        playerOnTap(
                          state.mostlyPlayed,
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
                          title: mostSongs.title,
                          artist: mostSongs.artist,
                          songUri: mostSongs.songUri,
                          id: mostSongs.id,
                          time: DateTime.now(),
                        );
                        context.read<RecentlyPlayedBloc>().add(
                              RecentlyPlayedEvent.addRecentlyPlayed(
                                recentlyPlayedSong,
                              ),
                            );
                        final mostlyPlayedSong = MostlyPlayedModel(
                          title: mostSongs.title,
                          artist: mostSongs.artist,
                          songUri: mostSongs.songUri,
                          id: mostSongs.id,
                        );
                        context.read<MostlyPlayedBloc>().add(
                              MostlyPlayedEvent.addMostlyPlayed(
                                mostlyPlayedSong,
                              ),
                            );
                      },
                      mostSongs.id,
                    );
                  });
            });
      }
    },
  );
}

void playerOnTap(
  List<MostlyPlayedModel> allSongs,
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

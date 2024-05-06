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
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/common/navigation_helper.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<RecentlyPlayedBloc>().add(
          const RecentlyPlayedEvent.getRecentlyPlayed(),
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recently Played'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 5.h),
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
  return BlocBuilder<RecentlyPlayedBloc, RecentlyPlayedState>(
    builder: (context, state) {
      if (state.recentlyPlayed.isEmpty) {
        return const Center(
          child: Text('No Recent'),
        );
      } else {
        return ListView.builder(
            itemCount: state.recentlyPlayed.length,
            itemBuilder: (context, index) {
              final recSongs = state.recentlyPlayed[index];

              return PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, playing) {
                    final isCurrentlyPlaying =
                        player.current.valueOrNull?.audio.audio.path ==
                            recSongs.songUri;
                    return SongsListStaticWidgets.listTile(
                      context,
                      recSongs.title,
                      recSongs.artist == '<unknown>'
                          ? 'Unknown Artist'
                          : recSongs.artist,
                      isCurrentlyPlaying
                          ? kSelectedTextColor
                          : Theme.of(context).textTheme.bodyLarge!.color!,
                      true,
                      () {
                        context
                            .read<RecentlyPlayedBloc>()
                            .add(RecentlyPlayedEvent.deleteRecentlyPlayed(
                              recSongs.id,
                            ));
                        toastMessege(context, 'Deleted From Recently Played');
                      },
                      () {
                        NavigationHelper.pushBottomToTop(
                          context,
                          const ScreenPlaying(),
                        );
                        playerOnTap(
                          state.recentlyPlayed,
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
                          title: recSongs.title,
                          artist: recSongs.artist,
                          songUri: recSongs.songUri,
                          id: recSongs.id,
                          time: DateTime.now(),
                        );
                        context.read<RecentlyPlayedBloc>().add(
                              RecentlyPlayedEvent.addRecentlyPlayed(
                                recentlyPlayedSong,
                              ),
                            );
                        final mostlyPlayedSong = MostlyPlayedModel(
                          title: recSongs.title,
                          artist: recSongs.artist,
                          songUri: recSongs.songUri,
                          id: recSongs.id,
                        );
                        context.read<MostlyPlayedBloc>().add(
                              MostlyPlayedEvent.addMostlyPlayed(
                                mostlyPlayedSong,
                              ),
                            );
                      },
                      recSongs.id,
                    );
                  });
            });
      }
    },
  );
}

void playerOnTap(
  List<RecentlyPlayedModel> allSongs,
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
              'assets/musicvoc.jpg',
            ),
          )),
    );
  }
}

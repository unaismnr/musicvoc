import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/presentation/now_playing/screen_playing.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class AllSongs extends StatelessWidget {
  AllSongs({super.key});

  final player = AssetsAudioPlayer.withId('0');

  // List<SongModel>? allSongs;

  @override
  Widget build(BuildContext context) {
    final player = AssetsAudioPlayer.withId('0');
    final List<Audio> convertedAudios = [];

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
                  radius: 23.w,
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
                              fontSize: 13.sp,
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
                              fontSize: 11.sp,
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
                trailing: const Icon(
                  Icons.more_vert,
                ),
                onTap: () {
                  // final currentAudio = assetsAudioPlayer.current.valueOrNull;
                  // final isSameSong =
                  //     currentAudio?.audio.audio.path == songs.uri;
                  // final isPlaying =
                  //     assetsAudioPlayer.isPlaying.valueOrNull ?? false;

                  // if (isSameSong) {
                  //   Get.to(() => ScreenPlaying());
                  // } else {
                  //   final currentPosition = isPlaying
                  //       ? assetsAudioPlayer.currentPosition.valueOrNull
                  //       : null;
                  //   assetsAudioPlayer.stop();
                  //   playSong(
                  //     songs.uri!,
                  //     songs.id.toString(),
                  //     songs.title,
                  //     songs.artist.toString(),
                  //   );
                  //   Get.to(() => ScreenPlaying())!.then((_) {
                  //     if (currentPosition != null) {
                  //       assetsAudioPlayer.seek(currentPosition);
                  //     }
                  //   });
                  // }

                  playerOnTap(
                    state.allSongs,
                    player,
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

                  Get.to(
                    () => ScreenPlaying(),
                    transition: kTransitionDownToUp,
                    duration: const Duration(
                      milliseconds: 80,
                    ),
                  );

                  // playSong(songs.uri!, songs.id.toString(), songs.title,
                  //     songs.artist!);

                  // songPlayController.playSong(
                  //     songs.uri!, songs.id, songs.title, index,
                  //     songList: allSongs!);
                },
              );
            },
            // separatorBuilder: (context, index) => Divider(
            //   indent: 16.w,
            //   color: Theme.of(context).dividerColor,
            // ),
            itemCount: state.allSongs.length,
          );
        }
      },
    );
  }
}

void playerOnTap(
  List<SongModel> allSongs,
  AssetsAudioPlayer player,
  List<Audio> convertedAudios,
) async {
  for (var item in allSongs) {
    convertedAudios.add(
      Audio.file(item.uri!,
          metas: Metas(
            title: item.title,
            artist: item.artist,
            id: item.id.toString(),
          )),
    );
  }
}

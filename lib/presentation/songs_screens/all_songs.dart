import 'dart:async';
import 'dart:developer';

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

class AllSongs extends StatefulWidget {
  const AllSongs({super.key});

  @override
  State<AllSongs> createState() => _AllSongsState();
}

class _AllSongsState extends State<AllSongs> {
  StreamSubscription<AllSongsState>? _subscription;

  final assetsAudioPlayer = AssetsAudioPlayer.withId('0');
  List<SongModel>? allSongs;

  @override
  void initState() {
    _subscription =
        BlocProvider.of<AllSongsBloc>(context).stream.listen((event) {});
    BlocProvider.of<AllSongsBloc>(context).add(
      const AllSongsEvent.fetchSongs(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllSongsBloc, AllSongsState>(
      builder: (context, state) {
        if (state.allSongs.isEmpty) {
          return const Center(
            child: Text('Waiting'),
          );
        } else {
          return ListView.separated(
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
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songs.displayName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                    Text(
                      songArtist.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
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

                  Get.to(() => ScreenPlaying(),
                      transition: kNavigationTransition);
                  playSong(
                    songs.uri!,
                    songs.id.toString(),
                    songs.title,
                    songs.artist.toString(),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => Divider(
              indent: 10.w,
              color: Theme.of(context).colorScheme.secondary,
            ),
            itemCount: state.allSongs.length,
          );
        }
      },
    );
  }

  playSong(String uri, String id, String title, String artist) async {
    try {
      await assetsAudioPlayer.open(
        Audio.file(
          uri,
          metas: Metas(
            id: id,
            title: title,
            artist: artist,
          ),
        ),
      );
      await assetsAudioPlayer.play();
    } catch (e) {
      log('Play Error: $e');
    }
  }
}

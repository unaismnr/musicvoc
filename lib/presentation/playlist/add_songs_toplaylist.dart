import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/domain/song_model.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AddSongsToPlaylist extends StatelessWidget {
  final String playlistName;
  const AddSongsToPlaylist({super.key, required this.playlistName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add to Playlist'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                context.read<PlaylistBloc>().add(
                      const PlaylistEvent.getPlaylist(),
                    );
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.check,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Expanded(
            child: SongsListStaticWidgets.container(
              BlocBuilder<AllSongsBloc, AllSongsState>(
                  builder: (context, state) {
                if (state.allSongs.isEmpty) {
                  return const Center(
                    child: Text('Empty'),
                  );
                } else {
                  return ListView.builder(
                      itemCount: state.allSongs.length,
                      itemBuilder: (context, index) {
                        final allSongs = state.allSongs[index];

                        return ListTile(
                          leading: CircleAvatar(
                            radius: 23.w,
                            backgroundColor: kMainBlueColor,
                            child: QueryArtworkWidget(
                              id: allSongs.id,
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
                                allSongs.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              Text(
                                allSongs.artist == '<unknown>'
                                    ? 'Unknown Artist'
                                    : allSongs.artist!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              final songsModel = SongsModel(
                                title: allSongs.title,
                                artist: allSongs.artist!,
                                songUri: allSongs.uri!,
                                id: allSongs.id,
                                time: DateTime.now(),
                              );
                              context.read<PlaylistBloc>().add(
                                    PlaylistEvent.addSongsToPlaylist(
                                        playlistName, songsModel),
                                  );
                              context.read<PlaylistBloc>().add(
                                    PlaylistEvent.getPlaylistByName(
                                      playlistName,
                                    ),
                                  );
                              context.read<PlaylistBloc>().add(
                                    const PlaylistEvent.getPlaylist(),
                                  );
                            },
                            icon: const Icon(
                              Icons.add_circle,
                            ),
                          ),
                          onTap: () {},
                        );
                      });
                }
              }),
              context,
            ),
          ),
        ],
      ),
      // bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

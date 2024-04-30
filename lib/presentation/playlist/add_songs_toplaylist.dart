import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/all_songs_bloc/all_songs_bloc.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/domain/song_model.dart';
import 'package:musicvoc/presentation/common/songs_list_widget.dart';
import 'package:musicvoc/services/database/playlist_db.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AddSongsToPlaylist extends StatelessWidget {
  final String playlistName;

  const AddSongsToPlaylist({
    super.key,
    required this.playlistName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add to Playlist'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.check,
                size: 25.sp,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5.h),
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
                              nullArtworkWidget: Icon(
                                Icons.music_note,
                                size: 35.sp,
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
                              PlaylistDb.instance.addSongsToPlaylist(
                                playlistName,
                                songsModel,
                              );
                              PlaylistDb.instance
                                  .refreshPlaylistFolderSongs(playlistName);
                            },
                            icon: const Icon(
                              Icons.add,
                            ),
                          ),
                        );
                      });
                }
              }),
              context,
            ),
          ),
        ],
      ),
    );
  }
}

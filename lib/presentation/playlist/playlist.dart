import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';
import 'package:musicvoc/presentation/common/custom_bottom_music.dart';
import 'package:musicvoc/presentation/playlist/add_playlist.dart';
import 'package:musicvoc/presentation/playlist/playlist_folder_songs.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PlaylistBloc>().add(
          const PlaylistEvent.getPlaylist(),
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
        centerTitle: true,
      ),
      body: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.playlist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final playlist = state.playlist[index];
              return ListTile(
                leading: Container(
                  height: 140.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: const Color.fromARGB(36, 158, 158, 158),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0.w),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: Icon(
                        Icons.music_note,
                        color: Colors.grey[500],
                        size: 30.sp,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  playlist.playlistName,
                  // 'Song Title',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                // subtitle: Text(
                //   '${playlist.playlistSongs.length} Songs',
                //   maxLines: 1,
                //   overflow: TextOverflow.ellipsis,
                //   style: TextStyle(
                //     color: Colors.grey[600],
                //   ),
                // ),
                trailing: IconButton(
                  onPressed: () {
                    final playlistModel = PlaylistSongModel(
                      playlistName: playlist.playlistName,
                      playlistSongs: playlist.playlistSongs,
                    );
                    context.read<PlaylistBloc>().add(
                          PlaylistEvent.deletePlaylist(
                            playlistModel,
                          ),
                        );

                    context.read<PlaylistBloc>().add(
                          const PlaylistEvent.getPlaylist(),
                        );
                  },
                  icon: Icon(
                    Icons.delete,
                    size: 23.sp,
                  ),
                ),
                onTap: () {
                  Get.to(
                    () => PlaylistFolderSongs(
                      title: playlist.playlistName,
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => kHeight10,
          );
        },
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50.h),
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          child: Icon(
            Icons.add,
            color: Theme.of(context).iconTheme.color,
            size: 30.sp,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddPlaylist(),
              ),
            );
          },
        ),
      ),
      bottomSheet: CustomBottomMusic(context: context),
    );
  }
}

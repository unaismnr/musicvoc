import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';
import 'package:musicvoc/presentation/common/navigation_helper.dart';
import 'package:musicvoc/presentation/playlist/add_edit_playlist.dart';
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
          if (state.playlist.isEmpty) {
            return const Center(
              child: Text(
                'No Playlist',
                textAlign: TextAlign.center,
              ),
            );
          }
          return ListView.separated(
            itemCount: state.playlist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final playlist = state.playlist[index];
              return ListTile(
                leading: Container(
                  // height: 140.h,
                  // width: 55.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(36, 158, 158, 158),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      child: Center(
                        child: Icon(
                          Icons.music_note,
                          color: Colors.grey[500],
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  playlist.playlistName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      context: context,
                      builder: (context) => SizedBox(
                        height: 130.h,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            kHeight10,
                            ListTile(
                              leading: const Icon(Icons.edit),
                              title: const Text("Edit Playlist Name"),
                              onTap: () {
                                Navigator.pop(context);
                                NavigationHelper.pushRightToLeft(
                                  context,
                                  AddEditPlaylist(
                                    initialPlaylistName: playlist.playlistName,
                                  ),
                                );
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.delete),
                              title: const Text("Delete Playlist"),
                              onTap: () {
                                Navigator.pop(context);
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    title: Text(
                                      'Are you sure to delete ${playlist.playlistName}?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .color,
                                        fontSize: 18,
                                      ),
                                    ),
                                    content: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            'Close',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 105, 155, 255),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            final playlistModel =
                                                PlaylistSongModel(
                                              playlistName:
                                                  playlist.playlistName,
                                              playlistSongs:
                                                  playlist.playlistSongs,
                                            );
                                            context.read<PlaylistBloc>().add(
                                                  PlaylistEvent.deletePlaylist(
                                                    playlistModel,
                                                  ),
                                                );

                                            context.read<PlaylistBloc>().add(
                                                  const PlaylistEvent
                                                      .getPlaylist(),
                                                );

                                            toastMessege(context,
                                                '${playlist.playlistName} Deleted');
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 105, 155, 255),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.more_vert,
                    size: 23,
                  ),
                ),
                onTap: () {
                  NavigationHelper.pushRightToLeft(
                    context,
                    PlaylistFolderSongs(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
          size: 30,
        ),
        onPressed: () {
          NavigationHelper.pushRightToLeft(
            context,
            AddEditPlaylist(),
          );
        },
      ),
    );
  }
}

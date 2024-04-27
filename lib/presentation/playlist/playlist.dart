import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/presentation/playlist/add_playlist.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 130.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(36, 158, 158, 158),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    child: Icon(
                      Icons.music_note,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Song Title',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '0 Songs',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 23,
                ),
              ),
              onTap: () {},
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
          size: 30,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddPlaylist(),
            ),
          );
        },
      ),
    );
  }
}

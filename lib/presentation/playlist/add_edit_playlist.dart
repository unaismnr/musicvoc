import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/services/database/playlist_db.dart';

class AddEditPlaylist extends StatelessWidget {
  final String? initialPlaylistName;
  AddEditPlaylist({super.key, this.initialPlaylistName});

  final textController = TextEditingController();
  final globeFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    textController.text = initialPlaylistName ?? '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {
                final name = textController.text.trim();
                if (globeFormKey.currentState!.validate()) {
                  initialPlaylistName == null
                      ? PlaylistDb.instance.createPlaylist(name)
                      : PlaylistDb.instance
                          .editPlaylist(initialPlaylistName!, name);

                  context.read<PlaylistBloc>().add(
                        PlaylistEvent.createPlaylist(name),
                      );
                  context.read<PlaylistBloc>().add(
                        const PlaylistEvent.getPlaylist(),
                      );
                  toastMessege(
                    context,
                    initialPlaylistName == null
                        ? 'Playlist $name Created'
                        : 'Playlist $name Edited',
                  );
                  Navigator.pop(context);
                }
              },
              icon: const Icon(
                Icons.check,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            kHeight10,
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kHeight10,
                    Text(
                      'Enter Playlist Name',
                      style: TextStyle(
                        fontSize: 17,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                    Form(
                      key: globeFormKey,
                      child: TextFormField(
                        controller: textController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Here',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(170, 158, 158, 158),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter a Playlist Name';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

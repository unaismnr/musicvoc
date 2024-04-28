import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';

class AddPlaylist extends StatelessWidget {
  AddPlaylist({super.key});

  final textController = TextEditingController();
  final globeFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                final name = textController.text.trim();
                if (globeFormKey.currentState!.validate()) {
                  context.read<PlaylistBloc>().add(
                        PlaylistEvent.createPlaylist(name),
                      );
                  context.read<PlaylistBloc>().add(
                        const PlaylistEvent.getPlaylist(),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            kHeight10,
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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

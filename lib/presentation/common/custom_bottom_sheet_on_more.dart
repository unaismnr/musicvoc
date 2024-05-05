import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/application/favorite_songs_bloc/favorite_songs_bloc.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';
import 'package:musicvoc/domain/songs_model/songs_model.dart';
import 'package:musicvoc/presentation/now_playing/playing_screen_functions.dart';
import 'package:on_audio_query/on_audio_query.dart';

Future<dynamic> customBottomSheetOnMoreIcon(
    BuildContext context, SongModel songs) {
  return showModalBottomSheet(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
    builder: (context) => SizedBox(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          kHeight10,
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Add to Favorite"),
            onTap: () {
              final favSongs = FavoriteModel(
                title: songs.title,
                artist: songs.artist!,
                songUri: songs.uri!,
                id: int.parse(songs.id.toString()),
                time: DateTime.now(),
              );
              context
                  .read<FavoriteSongsBloc>()
                  .add(FavoriteSongsEvent.addFavorite(favSongs));

              toastMessege(context, 'Added to Favorite');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.playlist_add),
            title: const Text("Add to Playlist"),
            onTap: () {
              Navigator.pop(context);
              final songsModel = SongsModel(
                  title: songs.title,
                  artist: songs.artist!,
                  songUri: songs.uri!,
                  id: int.parse(songs.id.toString()),
                  time: DateTime.now());
              PlayingScreenFunctions.customBottomSheet(context, songsModel);
            },
          ),
        ],
      ),
    ),
  );
}

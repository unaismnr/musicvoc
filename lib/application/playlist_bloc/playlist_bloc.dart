import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';
import 'package:musicvoc/services/database/playlist_db.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    on<_GetPlaylist>((event, emit) async {
      emit(
        state.copyWith(playlist: await PlaylistDb.instance.getPlaylist()),
      );
    });

    on<_CreatePlaylist>((event, emit) async {
      PlaylistDb.instance.createPlaylist(event.playlistNameToCreate);
      emit(
        state.copyWith(playlist: await PlaylistDb.instance.getPlaylist()),
      );
    });

    on<_DeletePlaylist>((event, emit) async {
      PlaylistDb.instance.deletePlaylist(event.deletePlaylist);
      emit(
        state.copyWith(
          playlist: await PlaylistDb.instance.getPlaylist(),
        ),
      );
    });
  }
}

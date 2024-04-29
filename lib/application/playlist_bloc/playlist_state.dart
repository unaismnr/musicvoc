part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    required List<PlaylistSongModel> playlist,
  }) = _PlaylistState;

  factory PlaylistState.initial() => const PlaylistState(
        playlist: [],
      );
}

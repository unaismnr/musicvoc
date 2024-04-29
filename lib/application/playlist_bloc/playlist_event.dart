part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getPlaylist() = _GetPlaylist;
  const factory PlaylistEvent.createPlaylist(
    String playlistNameToCreate,
  ) = _CreatePlaylist;
  const factory PlaylistEvent.deletePlaylist(
    PlaylistSongModel deletePlaylist,
  ) = _DeletePlaylist;
}

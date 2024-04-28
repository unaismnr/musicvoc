part of 'playlist_bloc.dart';

@freezed
class PlaylistEvent with _$PlaylistEvent {
  const factory PlaylistEvent.getPlaylist() = _GetPlaylist;
  const factory PlaylistEvent.getPlaylistByName(
    String playlistNameToGet,
  ) = _GetPlaylistByName;
  const factory PlaylistEvent.createPlaylist(
    String playlistNameToCreate,
  ) = _CreatePlaylist;
  const factory PlaylistEvent.addSongsToPlaylist(
    String playlistName,
    SongsModel addSongsToPlaylist,
  ) = _AddSongsToPlaylist;
  const factory PlaylistEvent.deleteSongFromPlaylist(
    String playlistNameToDelete,
    SongsModel deleteSongsFromPlaylist,
  ) = _DeleteSongFromPlaylist;
  const factory PlaylistEvent.deletePlaylist(
    PlaylistSongModel deletePlaylist,
  ) = _DeletePlaylist;
}

part of 'all_songs_bloc.dart';

@freezed
class AllSongsEvent with _$AllSongsEvent {
  const factory AllSongsEvent.fetchSongs() = _FetchSongs;
}

part of 'recently_played_bloc.dart';

@freezed
class RecentlyPlayedEvent with _$RecentlyPlayedEvent {
  const factory RecentlyPlayedEvent.getRecentlyPlayed() = _GetRecentlyPlayed;
  const factory RecentlyPlayedEvent.addRecentlyPlayed(
      RecentlyPlayedModel addSong) = _AddRecentlyPlayed;
  const factory RecentlyPlayedEvent.deleteRecentlyPlayed(int recSongId) =
      _DeleteRecentlyPlayed;
}

part of 'mostly_played_bloc.dart';

@freezed
class MostlyPlayedEvent with _$MostlyPlayedEvent {
  const factory MostlyPlayedEvent.getMostlyPlayed() = _GetMostlyPlayed;
  const factory MostlyPlayedEvent.addMostlyPlayed(
    MostlyPlayedModel song,
  ) = _AddMostlyPlayed;
  const factory MostlyPlayedEvent.updateMostlyPlayed() = _UpdateMostlyPlayed;
  const factory MostlyPlayedEvent.deleteMostlyPlayed(
    int songId,
  ) = _DeleteMostlyPlayed;
}

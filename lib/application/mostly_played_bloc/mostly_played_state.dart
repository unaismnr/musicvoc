part of 'mostly_played_bloc.dart';

@freezed
class MostlyPlayedState with _$MostlyPlayedState {
  const factory MostlyPlayedState({
    required List<MostlyPlayedModel> mostlyPlayed,
  }) = _MostlyPlayedState;

  factory MostlyPlayedState.initial() => const MostlyPlayedState(
        mostlyPlayed: [],
      );
}

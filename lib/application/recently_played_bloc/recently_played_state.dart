part of 'recently_played_bloc.dart';

@freezed
class RecentlyPlayedState with _$RecentlyPlayedState {
  const factory RecentlyPlayedState({
    required List<RecentlyPlayedModel> recentlyPlayed,
  }) = _RecentlyPlayedState;

  factory RecentlyPlayedState.initial() => const RecentlyPlayedState(
        recentlyPlayed: [],
      );
}

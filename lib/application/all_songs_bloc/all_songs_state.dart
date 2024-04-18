part of 'all_songs_bloc.dart';

@freezed
class AllSongsState with _$AllSongsState {
  const factory AllSongsState({
    required List<SongModel> allSongs,
  }) = _AllSongsState;

  factory AllSongsState.initial() => const AllSongsState(
        allSongs: [],
      );
}

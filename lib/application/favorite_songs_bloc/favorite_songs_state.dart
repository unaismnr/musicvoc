part of 'favorite_songs_bloc.dart';

@freezed
class FavoriteSongsState with _$FavoriteSongsState {
  const factory FavoriteSongsState({
    required List<FavoriteModel> favoriteSongs,
  }) = _FavoriteSongsState;

  factory FavoriteSongsState.initial() => const FavoriteSongsState(
        favoriteSongs: [],
      );
}

part of 'favorite_songs_bloc.dart';

@freezed
class FavoriteSongsEvent with _$FavoriteSongsEvent {
  const factory FavoriteSongsEvent.getFavorite() = _GetFavorite;
  const factory FavoriteSongsEvent.addFavorite(
    FavoriteModel addSong,
  ) = _AddFavorite;
  const factory FavoriteSongsEvent.deleteFavorite(
    FavoriteModel deleteSong,
  ) = _DeleteFavorite;
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicvoc/domain/favorite_model/favorite_model.dart';
import 'package:musicvoc/services/database/favorite_db.dart';

part 'favorite_songs_event.dart';
part 'favorite_songs_state.dart';
part 'favorite_songs_bloc.freezed.dart';

class FavoriteSongsBloc extends Bloc<FavoriteSongsEvent, FavoriteSongsState> {
  FavoriteSongsBloc() : super(FavoriteSongsState.initial()) {
    //GetFavorite
    on<_GetFavorite>((event, emit) async {
      emit(state.copyWith(
        favoriteSongs: await FavoriteDb.instance.getFavoriteSongs(),
      ));
    });

    //AddFavorite
    on<_AddFavorite>((event, emit) async {
      await FavoriteDb.instance.addFavoriteSongs(
        event.addSong,
      );
      emit(state.copyWith(
        favoriteSongs: await FavoriteDb.instance.getFavoriteSongs(),
      ));
    });

    //DeleteFavorite
    on<_DeleteFavorite>((event, emit) async {
      await FavoriteDb.instance.deleteFavoriteSongs(
        event.deleteSong,
      );
      emit(state.copyWith(
        favoriteSongs: await FavoriteDb.instance.getFavoriteSongs(),
      ));
    });
  }
}

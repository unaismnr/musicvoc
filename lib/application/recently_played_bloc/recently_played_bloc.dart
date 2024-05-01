import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicvoc/domain/recently_played_model/recently_played_model.dart';
import 'package:musicvoc/services/database/recently_played_db.dart';

part 'recently_played_event.dart';
part 'recently_played_state.dart';
part 'recently_played_bloc.freezed.dart';

class RecentlyPlayedBloc
    extends Bloc<RecentlyPlayedEvent, RecentlyPlayedState> {
  RecentlyPlayedBloc() : super(RecentlyPlayedState.initial()) {
    //GetRecentlyPlayed
    on<_GetRecentlyPlayed>((event, emit) async {
      emit(state.copyWith(
        recentlyPlayed: await RecentlyPlayedDb.instance.getRecentlyPlayed(),
      ));
    });

    //AddRecentlyPlayed
    on<_AddRecentlyPlayed>((event, emit) async {
      await RecentlyPlayedDb.instance.addRecentlyPlayed(
        event.addSong,
      );
      emit(state.copyWith(
        recentlyPlayed: await RecentlyPlayedDb.instance.getRecentlyPlayed(),
      ));
    });

    //DeleteRecentlyPlayed
    on<_DeleteRecentlyPlayed>((event, emit) async {
      await RecentlyPlayedDb.instance.deleteRecentlyPlayed(
        event.recSongId,
      );
      emit(state.copyWith(
        recentlyPlayed: await RecentlyPlayedDb.instance.getRecentlyPlayed(),
      ));
    });
  }
}

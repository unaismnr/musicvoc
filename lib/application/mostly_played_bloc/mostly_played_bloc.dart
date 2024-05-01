import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicvoc/domain/mostly_played_model/mostly_played_model.dart';
import 'package:musicvoc/services/database/mostly_played_db.dart';

part 'mostly_played_event.dart';
part 'mostly_played_state.dart';
part 'mostly_played_bloc.freezed.dart';

class MostlyPlayedBloc extends Bloc<MostlyPlayedEvent, MostlyPlayedState> {
  MostlyPlayedBloc() : super(MostlyPlayedState.initial()) {
    on<_GetMostlyPlayed>((event, emit) async {
      emit(
        state.copyWith(
          mostlyPlayed: await MostlyPlayedDb.instance.getMostlyPlayed(),
        ),
      );
    });

    on<_AddMostlyPlayed>((event, emit) async {
      await MostlyPlayedDb.instance.addMostlyPlayed(event.song);
      emit(
        state.copyWith(
          mostlyPlayed: await MostlyPlayedDb.instance.getMostlyPlayed(),
        ),
      );
    });

    on<_DeleteMostlyPlayed>((event, emit) async {
      await MostlyPlayedDb.instance.deleteMostlyPlayed(event.songId);
      emit(
        state.copyWith(
          mostlyPlayed: await MostlyPlayedDb.instance.getMostlyPlayed(),
        ),
      );
    });
  }
}

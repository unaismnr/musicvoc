import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loop_and_shuffle_event.dart';
part 'loop_and_shuffle_state.dart';
part 'loop_and_shuffle_bloc.freezed.dart';

class LoopAndShuffleBloc
    extends Bloc<LoopAndShuffleEvent, LoopAndShuffleState> {
  LoopAndShuffleBloc() : super(LoopAndShuffleState.initial()) {
    on<_Toggle>((event, emit) {
      final newLoopMode =
          state.loop == LoopMode.single ? LoopMode.none : LoopMode.single;
      emit(state.copyWith(loop: newLoopMode));
    });
    on<_Toggled>((event, emit) {
      final newLoopMode =
          state.loop == LoopMode.none ? LoopMode.single : LoopMode.none;
      emit(state.copyWith(loop: newLoopMode));
    });
  }
}

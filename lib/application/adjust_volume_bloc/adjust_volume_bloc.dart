import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adjust_volume_event.dart';
part 'adjust_volume_state.dart';
part 'adjust_volume_bloc.freezed.dart';

class AdjustVolumeBloc extends Bloc<AdjustVolumeEvent, AdjustVolumeState> {
  AdjustVolumeBloc() : super(AdjustVolumeState.initial()) {
    on<_AdjustVolume>((event, emit) {
      emit(state.copyWith(volume: event.newVolume));
    });
  }
}

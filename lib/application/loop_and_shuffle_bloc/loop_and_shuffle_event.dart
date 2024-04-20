part of 'loop_and_shuffle_bloc.dart';

@freezed
class LoopAndShuffleEvent with _$LoopAndShuffleEvent {
  const factory LoopAndShuffleEvent.toggle() = _Toggle;
  const factory LoopAndShuffleEvent.toggled() = _Toggled;
}

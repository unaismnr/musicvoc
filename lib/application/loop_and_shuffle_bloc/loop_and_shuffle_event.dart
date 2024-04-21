part of 'loop_and_shuffle_bloc.dart';

@freezed
class LoopAndShuffleEvent with _$LoopAndShuffleEvent {
  const factory LoopAndShuffleEvent.loopToggle() = _LoopToggle;
  const factory LoopAndShuffleEvent.loopToggled() = _LoopToggled;
  const factory LoopAndShuffleEvent.shuffleToggle() = _ShuffleToggle;
}

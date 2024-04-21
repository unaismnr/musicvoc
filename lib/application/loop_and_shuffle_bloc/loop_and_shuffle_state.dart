part of 'loop_and_shuffle_bloc.dart';

@freezed
class LoopAndShuffleState with _$LoopAndShuffleState {
  const factory LoopAndShuffleState({
    required LoopMode loop,
    required bool shuffle,
  }) = _LoopAndShuffleState;

  factory LoopAndShuffleState.initial() => const LoopAndShuffleState(
        loop: LoopMode.none,
        shuffle: false,
      );
}

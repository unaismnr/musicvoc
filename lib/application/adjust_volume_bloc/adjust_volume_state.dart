part of 'adjust_volume_bloc.dart';

@freezed
class AdjustVolumeState with _$AdjustVolumeState {
  const factory AdjustVolumeState({
    required double volume,
  }) = _AdjustVolumeState;

  factory AdjustVolumeState.initial() => const AdjustVolumeState(
        volume: 0.0,
      );
}

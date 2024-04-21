part of 'adjust_volume_bloc.dart';

@freezed
class AdjustVolumeEvent with _$AdjustVolumeEvent {
  const factory AdjustVolumeEvent.adjustVolume(
    double newVolume,
  ) = _AdjustVolume;
}

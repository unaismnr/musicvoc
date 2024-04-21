// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjust_volume_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdjustVolumeEvent {
  double get newVolume => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newVolume) adjustVolume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double newVolume)? adjustVolume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newVolume)? adjustVolume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdjustVolume value) adjustVolume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdjustVolume value)? adjustVolume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdjustVolume value)? adjustVolume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdjustVolumeEventCopyWith<AdjustVolumeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustVolumeEventCopyWith<$Res> {
  factory $AdjustVolumeEventCopyWith(
          AdjustVolumeEvent value, $Res Function(AdjustVolumeEvent) then) =
      _$AdjustVolumeEventCopyWithImpl<$Res, AdjustVolumeEvent>;
  @useResult
  $Res call({double newVolume});
}

/// @nodoc
class _$AdjustVolumeEventCopyWithImpl<$Res, $Val extends AdjustVolumeEvent>
    implements $AdjustVolumeEventCopyWith<$Res> {
  _$AdjustVolumeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newVolume = null,
  }) {
    return _then(_value.copyWith(
      newVolume: null == newVolume
          ? _value.newVolume
          : newVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdjustVolumeImplCopyWith<$Res>
    implements $AdjustVolumeEventCopyWith<$Res> {
  factory _$$AdjustVolumeImplCopyWith(
          _$AdjustVolumeImpl value, $Res Function(_$AdjustVolumeImpl) then) =
      __$$AdjustVolumeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double newVolume});
}

/// @nodoc
class __$$AdjustVolumeImplCopyWithImpl<$Res>
    extends _$AdjustVolumeEventCopyWithImpl<$Res, _$AdjustVolumeImpl>
    implements _$$AdjustVolumeImplCopyWith<$Res> {
  __$$AdjustVolumeImplCopyWithImpl(
      _$AdjustVolumeImpl _value, $Res Function(_$AdjustVolumeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newVolume = null,
  }) {
    return _then(_$AdjustVolumeImpl(
      null == newVolume
          ? _value.newVolume
          : newVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AdjustVolumeImpl implements _AdjustVolume {
  const _$AdjustVolumeImpl(this.newVolume);

  @override
  final double newVolume;

  @override
  String toString() {
    return 'AdjustVolumeEvent.adjustVolume(newVolume: $newVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdjustVolumeImpl &&
            (identical(other.newVolume, newVolume) ||
                other.newVolume == newVolume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newVolume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdjustVolumeImplCopyWith<_$AdjustVolumeImpl> get copyWith =>
      __$$AdjustVolumeImplCopyWithImpl<_$AdjustVolumeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double newVolume) adjustVolume,
  }) {
    return adjustVolume(newVolume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double newVolume)? adjustVolume,
  }) {
    return adjustVolume?.call(newVolume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double newVolume)? adjustVolume,
    required TResult orElse(),
  }) {
    if (adjustVolume != null) {
      return adjustVolume(newVolume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdjustVolume value) adjustVolume,
  }) {
    return adjustVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdjustVolume value)? adjustVolume,
  }) {
    return adjustVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdjustVolume value)? adjustVolume,
    required TResult orElse(),
  }) {
    if (adjustVolume != null) {
      return adjustVolume(this);
    }
    return orElse();
  }
}

abstract class _AdjustVolume implements AdjustVolumeEvent {
  const factory _AdjustVolume(final double newVolume) = _$AdjustVolumeImpl;

  @override
  double get newVolume;
  @override
  @JsonKey(ignore: true)
  _$$AdjustVolumeImplCopyWith<_$AdjustVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdjustVolumeState {
  double get volume => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdjustVolumeStateCopyWith<AdjustVolumeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustVolumeStateCopyWith<$Res> {
  factory $AdjustVolumeStateCopyWith(
          AdjustVolumeState value, $Res Function(AdjustVolumeState) then) =
      _$AdjustVolumeStateCopyWithImpl<$Res, AdjustVolumeState>;
  @useResult
  $Res call({double volume});
}

/// @nodoc
class _$AdjustVolumeStateCopyWithImpl<$Res, $Val extends AdjustVolumeState>
    implements $AdjustVolumeStateCopyWith<$Res> {
  _$AdjustVolumeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdjustVolumeStateImplCopyWith<$Res>
    implements $AdjustVolumeStateCopyWith<$Res> {
  factory _$$AdjustVolumeStateImplCopyWith(_$AdjustVolumeStateImpl value,
          $Res Function(_$AdjustVolumeStateImpl) then) =
      __$$AdjustVolumeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double volume});
}

/// @nodoc
class __$$AdjustVolumeStateImplCopyWithImpl<$Res>
    extends _$AdjustVolumeStateCopyWithImpl<$Res, _$AdjustVolumeStateImpl>
    implements _$$AdjustVolumeStateImplCopyWith<$Res> {
  __$$AdjustVolumeStateImplCopyWithImpl(_$AdjustVolumeStateImpl _value,
      $Res Function(_$AdjustVolumeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
  }) {
    return _then(_$AdjustVolumeStateImpl(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AdjustVolumeStateImpl implements _AdjustVolumeState {
  const _$AdjustVolumeStateImpl({required this.volume});

  @override
  final double volume;

  @override
  String toString() {
    return 'AdjustVolumeState(volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdjustVolumeStateImpl &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdjustVolumeStateImplCopyWith<_$AdjustVolumeStateImpl> get copyWith =>
      __$$AdjustVolumeStateImplCopyWithImpl<_$AdjustVolumeStateImpl>(
          this, _$identity);
}

abstract class _AdjustVolumeState implements AdjustVolumeState {
  const factory _AdjustVolumeState({required final double volume}) =
      _$AdjustVolumeStateImpl;

  @override
  double get volume;
  @override
  @JsonKey(ignore: true)
  _$$AdjustVolumeStateImplCopyWith<_$AdjustVolumeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

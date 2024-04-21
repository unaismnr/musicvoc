// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loop_and_shuffle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoopAndShuffleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loopToggle,
    required TResult Function() loopToggled,
    required TResult Function() shuffleToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loopToggle,
    TResult? Function()? loopToggled,
    TResult? Function()? shuffleToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loopToggle,
    TResult Function()? loopToggled,
    TResult Function()? shuffleToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoopToggle value) loopToggle,
    required TResult Function(_LoopToggled value) loopToggled,
    required TResult Function(_ShuffleToggle value) shuffleToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoopToggle value)? loopToggle,
    TResult? Function(_LoopToggled value)? loopToggled,
    TResult? Function(_ShuffleToggle value)? shuffleToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoopToggle value)? loopToggle,
    TResult Function(_LoopToggled value)? loopToggled,
    TResult Function(_ShuffleToggle value)? shuffleToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoopAndShuffleEventCopyWith<$Res> {
  factory $LoopAndShuffleEventCopyWith(
          LoopAndShuffleEvent value, $Res Function(LoopAndShuffleEvent) then) =
      _$LoopAndShuffleEventCopyWithImpl<$Res, LoopAndShuffleEvent>;
}

/// @nodoc
class _$LoopAndShuffleEventCopyWithImpl<$Res, $Val extends LoopAndShuffleEvent>
    implements $LoopAndShuffleEventCopyWith<$Res> {
  _$LoopAndShuffleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoopToggleImplCopyWith<$Res> {
  factory _$$LoopToggleImplCopyWith(
          _$LoopToggleImpl value, $Res Function(_$LoopToggleImpl) then) =
      __$$LoopToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoopToggleImplCopyWithImpl<$Res>
    extends _$LoopAndShuffleEventCopyWithImpl<$Res, _$LoopToggleImpl>
    implements _$$LoopToggleImplCopyWith<$Res> {
  __$$LoopToggleImplCopyWithImpl(
      _$LoopToggleImpl _value, $Res Function(_$LoopToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoopToggleImpl implements _LoopToggle {
  const _$LoopToggleImpl();

  @override
  String toString() {
    return 'LoopAndShuffleEvent.loopToggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoopToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loopToggle,
    required TResult Function() loopToggled,
    required TResult Function() shuffleToggle,
  }) {
    return loopToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loopToggle,
    TResult? Function()? loopToggled,
    TResult? Function()? shuffleToggle,
  }) {
    return loopToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loopToggle,
    TResult Function()? loopToggled,
    TResult Function()? shuffleToggle,
    required TResult orElse(),
  }) {
    if (loopToggle != null) {
      return loopToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoopToggle value) loopToggle,
    required TResult Function(_LoopToggled value) loopToggled,
    required TResult Function(_ShuffleToggle value) shuffleToggle,
  }) {
    return loopToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoopToggle value)? loopToggle,
    TResult? Function(_LoopToggled value)? loopToggled,
    TResult? Function(_ShuffleToggle value)? shuffleToggle,
  }) {
    return loopToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoopToggle value)? loopToggle,
    TResult Function(_LoopToggled value)? loopToggled,
    TResult Function(_ShuffleToggle value)? shuffleToggle,
    required TResult orElse(),
  }) {
    if (loopToggle != null) {
      return loopToggle(this);
    }
    return orElse();
  }
}

abstract class _LoopToggle implements LoopAndShuffleEvent {
  const factory _LoopToggle() = _$LoopToggleImpl;
}

/// @nodoc
abstract class _$$LoopToggledImplCopyWith<$Res> {
  factory _$$LoopToggledImplCopyWith(
          _$LoopToggledImpl value, $Res Function(_$LoopToggledImpl) then) =
      __$$LoopToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoopToggledImplCopyWithImpl<$Res>
    extends _$LoopAndShuffleEventCopyWithImpl<$Res, _$LoopToggledImpl>
    implements _$$LoopToggledImplCopyWith<$Res> {
  __$$LoopToggledImplCopyWithImpl(
      _$LoopToggledImpl _value, $Res Function(_$LoopToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoopToggledImpl implements _LoopToggled {
  const _$LoopToggledImpl();

  @override
  String toString() {
    return 'LoopAndShuffleEvent.loopToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoopToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loopToggle,
    required TResult Function() loopToggled,
    required TResult Function() shuffleToggle,
  }) {
    return loopToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loopToggle,
    TResult? Function()? loopToggled,
    TResult? Function()? shuffleToggle,
  }) {
    return loopToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loopToggle,
    TResult Function()? loopToggled,
    TResult Function()? shuffleToggle,
    required TResult orElse(),
  }) {
    if (loopToggled != null) {
      return loopToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoopToggle value) loopToggle,
    required TResult Function(_LoopToggled value) loopToggled,
    required TResult Function(_ShuffleToggle value) shuffleToggle,
  }) {
    return loopToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoopToggle value)? loopToggle,
    TResult? Function(_LoopToggled value)? loopToggled,
    TResult? Function(_ShuffleToggle value)? shuffleToggle,
  }) {
    return loopToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoopToggle value)? loopToggle,
    TResult Function(_LoopToggled value)? loopToggled,
    TResult Function(_ShuffleToggle value)? shuffleToggle,
    required TResult orElse(),
  }) {
    if (loopToggled != null) {
      return loopToggled(this);
    }
    return orElse();
  }
}

abstract class _LoopToggled implements LoopAndShuffleEvent {
  const factory _LoopToggled() = _$LoopToggledImpl;
}

/// @nodoc
abstract class _$$ShuffleToggleImplCopyWith<$Res> {
  factory _$$ShuffleToggleImplCopyWith(
          _$ShuffleToggleImpl value, $Res Function(_$ShuffleToggleImpl) then) =
      __$$ShuffleToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShuffleToggleImplCopyWithImpl<$Res>
    extends _$LoopAndShuffleEventCopyWithImpl<$Res, _$ShuffleToggleImpl>
    implements _$$ShuffleToggleImplCopyWith<$Res> {
  __$$ShuffleToggleImplCopyWithImpl(
      _$ShuffleToggleImpl _value, $Res Function(_$ShuffleToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShuffleToggleImpl implements _ShuffleToggle {
  const _$ShuffleToggleImpl();

  @override
  String toString() {
    return 'LoopAndShuffleEvent.shuffleToggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShuffleToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loopToggle,
    required TResult Function() loopToggled,
    required TResult Function() shuffleToggle,
  }) {
    return shuffleToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loopToggle,
    TResult? Function()? loopToggled,
    TResult? Function()? shuffleToggle,
  }) {
    return shuffleToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loopToggle,
    TResult Function()? loopToggled,
    TResult Function()? shuffleToggle,
    required TResult orElse(),
  }) {
    if (shuffleToggle != null) {
      return shuffleToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoopToggle value) loopToggle,
    required TResult Function(_LoopToggled value) loopToggled,
    required TResult Function(_ShuffleToggle value) shuffleToggle,
  }) {
    return shuffleToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoopToggle value)? loopToggle,
    TResult? Function(_LoopToggled value)? loopToggled,
    TResult? Function(_ShuffleToggle value)? shuffleToggle,
  }) {
    return shuffleToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoopToggle value)? loopToggle,
    TResult Function(_LoopToggled value)? loopToggled,
    TResult Function(_ShuffleToggle value)? shuffleToggle,
    required TResult orElse(),
  }) {
    if (shuffleToggle != null) {
      return shuffleToggle(this);
    }
    return orElse();
  }
}

abstract class _ShuffleToggle implements LoopAndShuffleEvent {
  const factory _ShuffleToggle() = _$ShuffleToggleImpl;
}

/// @nodoc
mixin _$LoopAndShuffleState {
  LoopMode get loop => throw _privateConstructorUsedError;
  bool get shuffle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoopAndShuffleStateCopyWith<LoopAndShuffleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoopAndShuffleStateCopyWith<$Res> {
  factory $LoopAndShuffleStateCopyWith(
          LoopAndShuffleState value, $Res Function(LoopAndShuffleState) then) =
      _$LoopAndShuffleStateCopyWithImpl<$Res, LoopAndShuffleState>;
  @useResult
  $Res call({LoopMode loop, bool shuffle});
}

/// @nodoc
class _$LoopAndShuffleStateCopyWithImpl<$Res, $Val extends LoopAndShuffleState>
    implements $LoopAndShuffleStateCopyWith<$Res> {
  _$LoopAndShuffleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loop = null,
    Object? shuffle = null,
  }) {
    return _then(_value.copyWith(
      loop: null == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as LoopMode,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoopAndShuffleStateImplCopyWith<$Res>
    implements $LoopAndShuffleStateCopyWith<$Res> {
  factory _$$LoopAndShuffleStateImplCopyWith(_$LoopAndShuffleStateImpl value,
          $Res Function(_$LoopAndShuffleStateImpl) then) =
      __$$LoopAndShuffleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoopMode loop, bool shuffle});
}

/// @nodoc
class __$$LoopAndShuffleStateImplCopyWithImpl<$Res>
    extends _$LoopAndShuffleStateCopyWithImpl<$Res, _$LoopAndShuffleStateImpl>
    implements _$$LoopAndShuffleStateImplCopyWith<$Res> {
  __$$LoopAndShuffleStateImplCopyWithImpl(_$LoopAndShuffleStateImpl _value,
      $Res Function(_$LoopAndShuffleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loop = null,
    Object? shuffle = null,
  }) {
    return _then(_$LoopAndShuffleStateImpl(
      loop: null == loop
          ? _value.loop
          : loop // ignore: cast_nullable_to_non_nullable
              as LoopMode,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoopAndShuffleStateImpl implements _LoopAndShuffleState {
  const _$LoopAndShuffleStateImpl({required this.loop, required this.shuffle});

  @override
  final LoopMode loop;
  @override
  final bool shuffle;

  @override
  String toString() {
    return 'LoopAndShuffleState(loop: $loop, shuffle: $shuffle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoopAndShuffleStateImpl &&
            (identical(other.loop, loop) || other.loop == loop) &&
            (identical(other.shuffle, shuffle) || other.shuffle == shuffle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loop, shuffle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoopAndShuffleStateImplCopyWith<_$LoopAndShuffleStateImpl> get copyWith =>
      __$$LoopAndShuffleStateImplCopyWithImpl<_$LoopAndShuffleStateImpl>(
          this, _$identity);
}

abstract class _LoopAndShuffleState implements LoopAndShuffleState {
  const factory _LoopAndShuffleState(
      {required final LoopMode loop,
      required final bool shuffle}) = _$LoopAndShuffleStateImpl;

  @override
  LoopMode get loop;
  @override
  bool get shuffle;
  @override
  @JsonKey(ignore: true)
  _$$LoopAndShuffleStateImplCopyWith<_$LoopAndShuffleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

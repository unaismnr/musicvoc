// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_played_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentlyPlayedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel addSong) addRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel deleteSong)
        deleteRecentlyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentlyPlayed,
    TResult Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecentlyPlayed value) getRecentlyPlayed,
    required TResult Function(_AddRecentlyPlayed value) addRecentlyPlayed,
    required TResult Function(_DeleteRecentlyPlayed value) deleteRecentlyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult? Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult? Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyPlayedEventCopyWith<$Res> {
  factory $RecentlyPlayedEventCopyWith(
          RecentlyPlayedEvent value, $Res Function(RecentlyPlayedEvent) then) =
      _$RecentlyPlayedEventCopyWithImpl<$Res, RecentlyPlayedEvent>;
}

/// @nodoc
class _$RecentlyPlayedEventCopyWithImpl<$Res, $Val extends RecentlyPlayedEvent>
    implements $RecentlyPlayedEventCopyWith<$Res> {
  _$RecentlyPlayedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRecentlyPlayedImplCopyWith<$Res> {
  factory _$$GetRecentlyPlayedImplCopyWith(_$GetRecentlyPlayedImpl value,
          $Res Function(_$GetRecentlyPlayedImpl) then) =
      __$$GetRecentlyPlayedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRecentlyPlayedImplCopyWithImpl<$Res>
    extends _$RecentlyPlayedEventCopyWithImpl<$Res, _$GetRecentlyPlayedImpl>
    implements _$$GetRecentlyPlayedImplCopyWith<$Res> {
  __$$GetRecentlyPlayedImplCopyWithImpl(_$GetRecentlyPlayedImpl _value,
      $Res Function(_$GetRecentlyPlayedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRecentlyPlayedImpl implements _GetRecentlyPlayed {
  const _$GetRecentlyPlayedImpl();

  @override
  String toString() {
    return 'RecentlyPlayedEvent.getRecentlyPlayed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRecentlyPlayedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel addSong) addRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel deleteSong)
        deleteRecentlyPlayed,
  }) {
    return getRecentlyPlayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
  }) {
    return getRecentlyPlayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentlyPlayed,
    TResult Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (getRecentlyPlayed != null) {
      return getRecentlyPlayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecentlyPlayed value) getRecentlyPlayed,
    required TResult Function(_AddRecentlyPlayed value) addRecentlyPlayed,
    required TResult Function(_DeleteRecentlyPlayed value) deleteRecentlyPlayed,
  }) {
    return getRecentlyPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult? Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult? Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
  }) {
    return getRecentlyPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (getRecentlyPlayed != null) {
      return getRecentlyPlayed(this);
    }
    return orElse();
  }
}

abstract class _GetRecentlyPlayed implements RecentlyPlayedEvent {
  const factory _GetRecentlyPlayed() = _$GetRecentlyPlayedImpl;
}

/// @nodoc
abstract class _$$AddRecentlyPlayedImplCopyWith<$Res> {
  factory _$$AddRecentlyPlayedImplCopyWith(_$AddRecentlyPlayedImpl value,
          $Res Function(_$AddRecentlyPlayedImpl) then) =
      __$$AddRecentlyPlayedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecentlyPlayedModel addSong});
}

/// @nodoc
class __$$AddRecentlyPlayedImplCopyWithImpl<$Res>
    extends _$RecentlyPlayedEventCopyWithImpl<$Res, _$AddRecentlyPlayedImpl>
    implements _$$AddRecentlyPlayedImplCopyWith<$Res> {
  __$$AddRecentlyPlayedImplCopyWithImpl(_$AddRecentlyPlayedImpl _value,
      $Res Function(_$AddRecentlyPlayedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSong = null,
  }) {
    return _then(_$AddRecentlyPlayedImpl(
      null == addSong
          ? _value.addSong
          : addSong // ignore: cast_nullable_to_non_nullable
              as RecentlyPlayedModel,
    ));
  }
}

/// @nodoc

class _$AddRecentlyPlayedImpl implements _AddRecentlyPlayed {
  const _$AddRecentlyPlayedImpl(this.addSong);

  @override
  final RecentlyPlayedModel addSong;

  @override
  String toString() {
    return 'RecentlyPlayedEvent.addRecentlyPlayed(addSong: $addSong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRecentlyPlayedImpl &&
            (identical(other.addSong, addSong) || other.addSong == addSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRecentlyPlayedImplCopyWith<_$AddRecentlyPlayedImpl> get copyWith =>
      __$$AddRecentlyPlayedImplCopyWithImpl<_$AddRecentlyPlayedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel addSong) addRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel deleteSong)
        deleteRecentlyPlayed,
  }) {
    return addRecentlyPlayed(addSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
  }) {
    return addRecentlyPlayed?.call(addSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentlyPlayed,
    TResult Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (addRecentlyPlayed != null) {
      return addRecentlyPlayed(addSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecentlyPlayed value) getRecentlyPlayed,
    required TResult Function(_AddRecentlyPlayed value) addRecentlyPlayed,
    required TResult Function(_DeleteRecentlyPlayed value) deleteRecentlyPlayed,
  }) {
    return addRecentlyPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult? Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult? Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
  }) {
    return addRecentlyPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (addRecentlyPlayed != null) {
      return addRecentlyPlayed(this);
    }
    return orElse();
  }
}

abstract class _AddRecentlyPlayed implements RecentlyPlayedEvent {
  const factory _AddRecentlyPlayed(final RecentlyPlayedModel addSong) =
      _$AddRecentlyPlayedImpl;

  RecentlyPlayedModel get addSong;
  @JsonKey(ignore: true)
  _$$AddRecentlyPlayedImplCopyWith<_$AddRecentlyPlayedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRecentlyPlayedImplCopyWith<$Res> {
  factory _$$DeleteRecentlyPlayedImplCopyWith(_$DeleteRecentlyPlayedImpl value,
          $Res Function(_$DeleteRecentlyPlayedImpl) then) =
      __$$DeleteRecentlyPlayedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecentlyPlayedModel deleteSong});
}

/// @nodoc
class __$$DeleteRecentlyPlayedImplCopyWithImpl<$Res>
    extends _$RecentlyPlayedEventCopyWithImpl<$Res, _$DeleteRecentlyPlayedImpl>
    implements _$$DeleteRecentlyPlayedImplCopyWith<$Res> {
  __$$DeleteRecentlyPlayedImplCopyWithImpl(_$DeleteRecentlyPlayedImpl _value,
      $Res Function(_$DeleteRecentlyPlayedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteSong = null,
  }) {
    return _then(_$DeleteRecentlyPlayedImpl(
      null == deleteSong
          ? _value.deleteSong
          : deleteSong // ignore: cast_nullable_to_non_nullable
              as RecentlyPlayedModel,
    ));
  }
}

/// @nodoc

class _$DeleteRecentlyPlayedImpl implements _DeleteRecentlyPlayed {
  const _$DeleteRecentlyPlayedImpl(this.deleteSong);

  @override
  final RecentlyPlayedModel deleteSong;

  @override
  String toString() {
    return 'RecentlyPlayedEvent.deleteRecentlyPlayed(deleteSong: $deleteSong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRecentlyPlayedImpl &&
            (identical(other.deleteSong, deleteSong) ||
                other.deleteSong == deleteSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteSong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRecentlyPlayedImplCopyWith<_$DeleteRecentlyPlayedImpl>
      get copyWith =>
          __$$DeleteRecentlyPlayedImplCopyWithImpl<_$DeleteRecentlyPlayedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel addSong) addRecentlyPlayed,
    required TResult Function(RecentlyPlayedModel deleteSong)
        deleteRecentlyPlayed,
  }) {
    return deleteRecentlyPlayed(deleteSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult? Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
  }) {
    return deleteRecentlyPlayed?.call(deleteSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecentlyPlayed,
    TResult Function(RecentlyPlayedModel addSong)? addRecentlyPlayed,
    TResult Function(RecentlyPlayedModel deleteSong)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (deleteRecentlyPlayed != null) {
      return deleteRecentlyPlayed(deleteSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecentlyPlayed value) getRecentlyPlayed,
    required TResult Function(_AddRecentlyPlayed value) addRecentlyPlayed,
    required TResult Function(_DeleteRecentlyPlayed value) deleteRecentlyPlayed,
  }) {
    return deleteRecentlyPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult? Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult? Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
  }) {
    return deleteRecentlyPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecentlyPlayed value)? getRecentlyPlayed,
    TResult Function(_AddRecentlyPlayed value)? addRecentlyPlayed,
    TResult Function(_DeleteRecentlyPlayed value)? deleteRecentlyPlayed,
    required TResult orElse(),
  }) {
    if (deleteRecentlyPlayed != null) {
      return deleteRecentlyPlayed(this);
    }
    return orElse();
  }
}

abstract class _DeleteRecentlyPlayed implements RecentlyPlayedEvent {
  const factory _DeleteRecentlyPlayed(final RecentlyPlayedModel deleteSong) =
      _$DeleteRecentlyPlayedImpl;

  RecentlyPlayedModel get deleteSong;
  @JsonKey(ignore: true)
  _$$DeleteRecentlyPlayedImplCopyWith<_$DeleteRecentlyPlayedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentlyPlayedState {
  List<RecentlyPlayedModel> get recentlyPlayed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentlyPlayedStateCopyWith<RecentlyPlayedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyPlayedStateCopyWith<$Res> {
  factory $RecentlyPlayedStateCopyWith(
          RecentlyPlayedState value, $Res Function(RecentlyPlayedState) then) =
      _$RecentlyPlayedStateCopyWithImpl<$Res, RecentlyPlayedState>;
  @useResult
  $Res call({List<RecentlyPlayedModel> recentlyPlayed});
}

/// @nodoc
class _$RecentlyPlayedStateCopyWithImpl<$Res, $Val extends RecentlyPlayedState>
    implements $RecentlyPlayedStateCopyWith<$Res> {
  _$RecentlyPlayedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentlyPlayed = null,
  }) {
    return _then(_value.copyWith(
      recentlyPlayed: null == recentlyPlayed
          ? _value.recentlyPlayed
          : recentlyPlayed // ignore: cast_nullable_to_non_nullable
              as List<RecentlyPlayedModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentlyPlayedStateImplCopyWith<$Res>
    implements $RecentlyPlayedStateCopyWith<$Res> {
  factory _$$RecentlyPlayedStateImplCopyWith(_$RecentlyPlayedStateImpl value,
          $Res Function(_$RecentlyPlayedStateImpl) then) =
      __$$RecentlyPlayedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecentlyPlayedModel> recentlyPlayed});
}

/// @nodoc
class __$$RecentlyPlayedStateImplCopyWithImpl<$Res>
    extends _$RecentlyPlayedStateCopyWithImpl<$Res, _$RecentlyPlayedStateImpl>
    implements _$$RecentlyPlayedStateImplCopyWith<$Res> {
  __$$RecentlyPlayedStateImplCopyWithImpl(_$RecentlyPlayedStateImpl _value,
      $Res Function(_$RecentlyPlayedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentlyPlayed = null,
  }) {
    return _then(_$RecentlyPlayedStateImpl(
      recentlyPlayed: null == recentlyPlayed
          ? _value._recentlyPlayed
          : recentlyPlayed // ignore: cast_nullable_to_non_nullable
              as List<RecentlyPlayedModel>,
    ));
  }
}

/// @nodoc

class _$RecentlyPlayedStateImpl implements _RecentlyPlayedState {
  const _$RecentlyPlayedStateImpl(
      {required final List<RecentlyPlayedModel> recentlyPlayed})
      : _recentlyPlayed = recentlyPlayed;

  final List<RecentlyPlayedModel> _recentlyPlayed;
  @override
  List<RecentlyPlayedModel> get recentlyPlayed {
    if (_recentlyPlayed is EqualUnmodifiableListView) return _recentlyPlayed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyPlayed);
  }

  @override
  String toString() {
    return 'RecentlyPlayedState(recentlyPlayed: $recentlyPlayed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyPlayedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recentlyPlayed, _recentlyPlayed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentlyPlayed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyPlayedStateImplCopyWith<_$RecentlyPlayedStateImpl> get copyWith =>
      __$$RecentlyPlayedStateImplCopyWithImpl<_$RecentlyPlayedStateImpl>(
          this, _$identity);
}

abstract class _RecentlyPlayedState implements RecentlyPlayedState {
  const factory _RecentlyPlayedState(
          {required final List<RecentlyPlayedModel> recentlyPlayed}) =
      _$RecentlyPlayedStateImpl;

  @override
  List<RecentlyPlayedModel> get recentlyPlayed;
  @override
  @JsonKey(ignore: true)
  _$$RecentlyPlayedStateImplCopyWith<_$RecentlyPlayedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

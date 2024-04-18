// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_songs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllSongsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSongs value) fetchSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSongs value)? fetchSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSongs value)? fetchSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllSongsEventCopyWith<$Res> {
  factory $AllSongsEventCopyWith(
          AllSongsEvent value, $Res Function(AllSongsEvent) then) =
      _$AllSongsEventCopyWithImpl<$Res, AllSongsEvent>;
}

/// @nodoc
class _$AllSongsEventCopyWithImpl<$Res, $Val extends AllSongsEvent>
    implements $AllSongsEventCopyWith<$Res> {
  _$AllSongsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSongsImplCopyWith<$Res> {
  factory _$$FetchSongsImplCopyWith(
          _$FetchSongsImpl value, $Res Function(_$FetchSongsImpl) then) =
      __$$FetchSongsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSongsImplCopyWithImpl<$Res>
    extends _$AllSongsEventCopyWithImpl<$Res, _$FetchSongsImpl>
    implements _$$FetchSongsImplCopyWith<$Res> {
  __$$FetchSongsImplCopyWithImpl(
      _$FetchSongsImpl _value, $Res Function(_$FetchSongsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSongsImpl implements _FetchSongs {
  const _$FetchSongsImpl();

  @override
  String toString() {
    return 'AllSongsEvent.fetchSongs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSongsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSongs,
  }) {
    return fetchSongs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSongs,
  }) {
    return fetchSongs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSongs,
    required TResult orElse(),
  }) {
    if (fetchSongs != null) {
      return fetchSongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSongs value) fetchSongs,
  }) {
    return fetchSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSongs value)? fetchSongs,
  }) {
    return fetchSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSongs value)? fetchSongs,
    required TResult orElse(),
  }) {
    if (fetchSongs != null) {
      return fetchSongs(this);
    }
    return orElse();
  }
}

abstract class _FetchSongs implements AllSongsEvent {
  const factory _FetchSongs() = _$FetchSongsImpl;
}

/// @nodoc
mixin _$AllSongsState {
  List<SongModel> get allSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllSongsStateCopyWith<AllSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllSongsStateCopyWith<$Res> {
  factory $AllSongsStateCopyWith(
          AllSongsState value, $Res Function(AllSongsState) then) =
      _$AllSongsStateCopyWithImpl<$Res, AllSongsState>;
  @useResult
  $Res call({List<SongModel> allSongs});
}

/// @nodoc
class _$AllSongsStateCopyWithImpl<$Res, $Val extends AllSongsState>
    implements $AllSongsStateCopyWith<$Res> {
  _$AllSongsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allSongs = null,
  }) {
    return _then(_value.copyWith(
      allSongs: null == allSongs
          ? _value.allSongs
          : allSongs // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllSongsStateImplCopyWith<$Res>
    implements $AllSongsStateCopyWith<$Res> {
  factory _$$AllSongsStateImplCopyWith(
          _$AllSongsStateImpl value, $Res Function(_$AllSongsStateImpl) then) =
      __$$AllSongsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SongModel> allSongs});
}

/// @nodoc
class __$$AllSongsStateImplCopyWithImpl<$Res>
    extends _$AllSongsStateCopyWithImpl<$Res, _$AllSongsStateImpl>
    implements _$$AllSongsStateImplCopyWith<$Res> {
  __$$AllSongsStateImplCopyWithImpl(
      _$AllSongsStateImpl _value, $Res Function(_$AllSongsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allSongs = null,
  }) {
    return _then(_$AllSongsStateImpl(
      allSongs: null == allSongs
          ? _value._allSongs
          : allSongs // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ));
  }
}

/// @nodoc

class _$AllSongsStateImpl implements _AllSongsState {
  const _$AllSongsStateImpl({required final List<SongModel> allSongs})
      : _allSongs = allSongs;

  final List<SongModel> _allSongs;
  @override
  List<SongModel> get allSongs {
    if (_allSongs is EqualUnmodifiableListView) return _allSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allSongs);
  }

  @override
  String toString() {
    return 'AllSongsState(allSongs: $allSongs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllSongsStateImpl &&
            const DeepCollectionEquality().equals(other._allSongs, _allSongs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_allSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllSongsStateImplCopyWith<_$AllSongsStateImpl> get copyWith =>
      __$$AllSongsStateImplCopyWithImpl<_$AllSongsStateImpl>(this, _$identity);
}

abstract class _AllSongsState implements AllSongsState {
  const factory _AllSongsState({required final List<SongModel> allSongs}) =
      _$AllSongsStateImpl;

  @override
  List<SongModel> get allSongs;
  @override
  @JsonKey(ignore: true)
  _$$AllSongsStateImplCopyWith<_$AllSongsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

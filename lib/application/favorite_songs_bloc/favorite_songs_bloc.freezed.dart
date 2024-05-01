// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_songs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteSongsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorite,
    required TResult Function(FavoriteModel addSong) addFavorite,
    required TResult Function(int songId) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorite,
    TResult? Function(FavoriteModel addSong)? addFavorite,
    TResult? Function(int songId)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorite,
    TResult Function(FavoriteModel addSong)? addFavorite,
    TResult Function(int songId)? deleteFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteSongsEventCopyWith<$Res> {
  factory $FavoriteSongsEventCopyWith(
          FavoriteSongsEvent value, $Res Function(FavoriteSongsEvent) then) =
      _$FavoriteSongsEventCopyWithImpl<$Res, FavoriteSongsEvent>;
}

/// @nodoc
class _$FavoriteSongsEventCopyWithImpl<$Res, $Val extends FavoriteSongsEvent>
    implements $FavoriteSongsEventCopyWith<$Res> {
  _$FavoriteSongsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavoriteImplCopyWith<$Res> {
  factory _$$GetFavoriteImplCopyWith(
          _$GetFavoriteImpl value, $Res Function(_$GetFavoriteImpl) then) =
      __$$GetFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteSongsEventCopyWithImpl<$Res, _$GetFavoriteImpl>
    implements _$$GetFavoriteImplCopyWith<$Res> {
  __$$GetFavoriteImplCopyWithImpl(
      _$GetFavoriteImpl _value, $Res Function(_$GetFavoriteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoriteImpl implements _GetFavorite {
  const _$GetFavoriteImpl();

  @override
  String toString() {
    return 'FavoriteSongsEvent.getFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorite,
    required TResult Function(FavoriteModel addSong) addFavorite,
    required TResult Function(int songId) deleteFavorite,
  }) {
    return getFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorite,
    TResult? Function(FavoriteModel addSong)? addFavorite,
    TResult? Function(int songId)? deleteFavorite,
  }) {
    return getFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorite,
    TResult Function(FavoriteModel addSong)? addFavorite,
    TResult Function(int songId)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (getFavorite != null) {
      return getFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
  }) {
    return getFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
  }) {
    return getFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (getFavorite != null) {
      return getFavorite(this);
    }
    return orElse();
  }
}

abstract class _GetFavorite implements FavoriteSongsEvent {
  const factory _GetFavorite() = _$GetFavoriteImpl;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
          _$AddFavoriteImpl value, $Res Function(_$AddFavoriteImpl) then) =
      __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoriteModel addSong});
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteSongsEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
      _$AddFavoriteImpl _value, $Res Function(_$AddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSong = null,
  }) {
    return _then(_$AddFavoriteImpl(
      null == addSong
          ? _value.addSong
          : addSong // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }
}

/// @nodoc

class _$AddFavoriteImpl implements _AddFavorite {
  const _$AddFavoriteImpl(this.addSong);

  @override
  final FavoriteModel addSong;

  @override
  String toString() {
    return 'FavoriteSongsEvent.addFavorite(addSong: $addSong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.addSong, addSong) || other.addSong == addSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorite,
    required TResult Function(FavoriteModel addSong) addFavorite,
    required TResult Function(int songId) deleteFavorite,
  }) {
    return addFavorite(addSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorite,
    TResult? Function(FavoriteModel addSong)? addFavorite,
    TResult? Function(int songId)? deleteFavorite,
  }) {
    return addFavorite?.call(addSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorite,
    TResult Function(FavoriteModel addSong)? addFavorite,
    TResult Function(int songId)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(addSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddFavorite implements FavoriteSongsEvent {
  const factory _AddFavorite(final FavoriteModel addSong) = _$AddFavoriteImpl;

  FavoriteModel get addSong;
  @JsonKey(ignore: true)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavoriteImplCopyWith<$Res> {
  factory _$$DeleteFavoriteImplCopyWith(_$DeleteFavoriteImpl value,
          $Res Function(_$DeleteFavoriteImpl) then) =
      __$$DeleteFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int songId});
}

/// @nodoc
class __$$DeleteFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteSongsEventCopyWithImpl<$Res, _$DeleteFavoriteImpl>
    implements _$$DeleteFavoriteImplCopyWith<$Res> {
  __$$DeleteFavoriteImplCopyWithImpl(
      _$DeleteFavoriteImpl _value, $Res Function(_$DeleteFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
  }) {
    return _then(_$DeleteFavoriteImpl(
      null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavoriteImpl implements _DeleteFavorite {
  const _$DeleteFavoriteImpl(this.songId);

  @override
  final int songId;

  @override
  String toString() {
    return 'FavoriteSongsEvent.deleteFavorite(songId: $songId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavoriteImpl &&
            (identical(other.songId, songId) || other.songId == songId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavoriteImplCopyWith<_$DeleteFavoriteImpl> get copyWith =>
      __$$DeleteFavoriteImplCopyWithImpl<_$DeleteFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorite,
    required TResult Function(FavoriteModel addSong) addFavorite,
    required TResult Function(int songId) deleteFavorite,
  }) {
    return deleteFavorite(songId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorite,
    TResult? Function(FavoriteModel addSong)? addFavorite,
    TResult? Function(int songId)? deleteFavorite,
  }) {
    return deleteFavorite?.call(songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorite,
    TResult Function(FavoriteModel addSong)? addFavorite,
    TResult Function(int songId)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(songId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
  }) {
    return deleteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
  }) {
    return deleteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavorite implements FavoriteSongsEvent {
  const factory _DeleteFavorite(final int songId) = _$DeleteFavoriteImpl;

  int get songId;
  @JsonKey(ignore: true)
  _$$DeleteFavoriteImplCopyWith<_$DeleteFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteSongsState {
  List<FavoriteModel> get favoriteSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteSongsStateCopyWith<FavoriteSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteSongsStateCopyWith<$Res> {
  factory $FavoriteSongsStateCopyWith(
          FavoriteSongsState value, $Res Function(FavoriteSongsState) then) =
      _$FavoriteSongsStateCopyWithImpl<$Res, FavoriteSongsState>;
  @useResult
  $Res call({List<FavoriteModel> favoriteSongs});
}

/// @nodoc
class _$FavoriteSongsStateCopyWithImpl<$Res, $Val extends FavoriteSongsState>
    implements $FavoriteSongsStateCopyWith<$Res> {
  _$FavoriteSongsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteSongs = null,
  }) {
    return _then(_value.copyWith(
      favoriteSongs: null == favoriteSongs
          ? _value.favoriteSongs
          : favoriteSongs // ignore: cast_nullable_to_non_nullable
              as List<FavoriteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteSongsStateImplCopyWith<$Res>
    implements $FavoriteSongsStateCopyWith<$Res> {
  factory _$$FavoriteSongsStateImplCopyWith(_$FavoriteSongsStateImpl value,
          $Res Function(_$FavoriteSongsStateImpl) then) =
      __$$FavoriteSongsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteModel> favoriteSongs});
}

/// @nodoc
class __$$FavoriteSongsStateImplCopyWithImpl<$Res>
    extends _$FavoriteSongsStateCopyWithImpl<$Res, _$FavoriteSongsStateImpl>
    implements _$$FavoriteSongsStateImplCopyWith<$Res> {
  __$$FavoriteSongsStateImplCopyWithImpl(_$FavoriteSongsStateImpl _value,
      $Res Function(_$FavoriteSongsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteSongs = null,
  }) {
    return _then(_$FavoriteSongsStateImpl(
      favoriteSongs: null == favoriteSongs
          ? _value._favoriteSongs
          : favoriteSongs // ignore: cast_nullable_to_non_nullable
              as List<FavoriteModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteSongsStateImpl implements _FavoriteSongsState {
  const _$FavoriteSongsStateImpl(
      {required final List<FavoriteModel> favoriteSongs})
      : _favoriteSongs = favoriteSongs;

  final List<FavoriteModel> _favoriteSongs;
  @override
  List<FavoriteModel> get favoriteSongs {
    if (_favoriteSongs is EqualUnmodifiableListView) return _favoriteSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteSongs);
  }

  @override
  String toString() {
    return 'FavoriteSongsState(favoriteSongs: $favoriteSongs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSongsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteSongs, _favoriteSongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteSongs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSongsStateImplCopyWith<_$FavoriteSongsStateImpl> get copyWith =>
      __$$FavoriteSongsStateImplCopyWithImpl<_$FavoriteSongsStateImpl>(
          this, _$identity);
}

abstract class _FavoriteSongsState implements FavoriteSongsState {
  const factory _FavoriteSongsState(
          {required final List<FavoriteModel> favoriteSongs}) =
      _$FavoriteSongsStateImpl;

  @override
  List<FavoriteModel> get favoriteSongs;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteSongsStateImplCopyWith<_$FavoriteSongsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistEventCopyWith<$Res> {
  factory $PlaylistEventCopyWith(
          PlaylistEvent value, $Res Function(PlaylistEvent) then) =
      _$PlaylistEventCopyWithImpl<$Res, PlaylistEvent>;
}

/// @nodoc
class _$PlaylistEventCopyWithImpl<$Res, $Val extends PlaylistEvent>
    implements $PlaylistEventCopyWith<$Res> {
  _$PlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlaylistImplCopyWith<$Res> {
  factory _$$GetPlaylistImplCopyWith(
          _$GetPlaylistImpl value, $Res Function(_$GetPlaylistImpl) then) =
      __$$GetPlaylistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$GetPlaylistImpl>
    implements _$$GetPlaylistImplCopyWith<$Res> {
  __$$GetPlaylistImplCopyWithImpl(
      _$GetPlaylistImpl _value, $Res Function(_$GetPlaylistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaylistImpl with DiagnosticableTreeMixin implements _GetPlaylist {
  const _$GetPlaylistImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.getPlaylist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PlaylistEvent.getPlaylist'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaylistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return getPlaylist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return getPlaylist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (getPlaylist != null) {
      return getPlaylist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return getPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return getPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (getPlaylist != null) {
      return getPlaylist(this);
    }
    return orElse();
  }
}

abstract class _GetPlaylist implements PlaylistEvent {
  const factory _GetPlaylist() = _$GetPlaylistImpl;
}

/// @nodoc
abstract class _$$GetPlaylistByNameImplCopyWith<$Res> {
  factory _$$GetPlaylistByNameImplCopyWith(_$GetPlaylistByNameImpl value,
          $Res Function(_$GetPlaylistByNameImpl) then) =
      __$$GetPlaylistByNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistNameToGet});
}

/// @nodoc
class __$$GetPlaylistByNameImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$GetPlaylistByNameImpl>
    implements _$$GetPlaylistByNameImplCopyWith<$Res> {
  __$$GetPlaylistByNameImplCopyWithImpl(_$GetPlaylistByNameImpl _value,
      $Res Function(_$GetPlaylistByNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistNameToGet = null,
  }) {
    return _then(_$GetPlaylistByNameImpl(
      null == playlistNameToGet
          ? _value.playlistNameToGet
          : playlistNameToGet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPlaylistByNameImpl
    with DiagnosticableTreeMixin
    implements _GetPlaylistByName {
  const _$GetPlaylistByNameImpl(this.playlistNameToGet);

  @override
  final String playlistNameToGet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.getPlaylistByName(playlistNameToGet: $playlistNameToGet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.getPlaylistByName'))
      ..add(DiagnosticsProperty('playlistNameToGet', playlistNameToGet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlaylistByNameImpl &&
            (identical(other.playlistNameToGet, playlistNameToGet) ||
                other.playlistNameToGet == playlistNameToGet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistNameToGet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlaylistByNameImplCopyWith<_$GetPlaylistByNameImpl> get copyWith =>
      __$$GetPlaylistByNameImplCopyWithImpl<_$GetPlaylistByNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return getPlaylistByName(playlistNameToGet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return getPlaylistByName?.call(playlistNameToGet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (getPlaylistByName != null) {
      return getPlaylistByName(playlistNameToGet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return getPlaylistByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return getPlaylistByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (getPlaylistByName != null) {
      return getPlaylistByName(this);
    }
    return orElse();
  }
}

abstract class _GetPlaylistByName implements PlaylistEvent {
  const factory _GetPlaylistByName(final String playlistNameToGet) =
      _$GetPlaylistByNameImpl;

  String get playlistNameToGet;
  @JsonKey(ignore: true)
  _$$GetPlaylistByNameImplCopyWith<_$GetPlaylistByNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePlaylistImplCopyWith<$Res> {
  factory _$$CreatePlaylistImplCopyWith(_$CreatePlaylistImpl value,
          $Res Function(_$CreatePlaylistImpl) then) =
      __$$CreatePlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistNameToCreate});
}

/// @nodoc
class __$$CreatePlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$CreatePlaylistImpl>
    implements _$$CreatePlaylistImplCopyWith<$Res> {
  __$$CreatePlaylistImplCopyWithImpl(
      _$CreatePlaylistImpl _value, $Res Function(_$CreatePlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistNameToCreate = null,
  }) {
    return _then(_$CreatePlaylistImpl(
      null == playlistNameToCreate
          ? _value.playlistNameToCreate
          : playlistNameToCreate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePlaylistImpl
    with DiagnosticableTreeMixin
    implements _CreatePlaylist {
  const _$CreatePlaylistImpl(this.playlistNameToCreate);

  @override
  final String playlistNameToCreate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.createPlaylist(playlistNameToCreate: $playlistNameToCreate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.createPlaylist'))
      ..add(DiagnosticsProperty('playlistNameToCreate', playlistNameToCreate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlaylistImpl &&
            (identical(other.playlistNameToCreate, playlistNameToCreate) ||
                other.playlistNameToCreate == playlistNameToCreate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistNameToCreate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlaylistImplCopyWith<_$CreatePlaylistImpl> get copyWith =>
      __$$CreatePlaylistImplCopyWithImpl<_$CreatePlaylistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return createPlaylist(playlistNameToCreate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return createPlaylist?.call(playlistNameToCreate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (createPlaylist != null) {
      return createPlaylist(playlistNameToCreate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return createPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return createPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (createPlaylist != null) {
      return createPlaylist(this);
    }
    return orElse();
  }
}

abstract class _CreatePlaylist implements PlaylistEvent {
  const factory _CreatePlaylist(final String playlistNameToCreate) =
      _$CreatePlaylistImpl;

  String get playlistNameToCreate;
  @JsonKey(ignore: true)
  _$$CreatePlaylistImplCopyWith<_$CreatePlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSongsToPlaylistImplCopyWith<$Res> {
  factory _$$AddSongsToPlaylistImplCopyWith(_$AddSongsToPlaylistImpl value,
          $Res Function(_$AddSongsToPlaylistImpl) then) =
      __$$AddSongsToPlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistName, SongsModel addSongsToPlaylist});
}

/// @nodoc
class __$$AddSongsToPlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$AddSongsToPlaylistImpl>
    implements _$$AddSongsToPlaylistImplCopyWith<$Res> {
  __$$AddSongsToPlaylistImplCopyWithImpl(_$AddSongsToPlaylistImpl _value,
      $Res Function(_$AddSongsToPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistName = null,
    Object? addSongsToPlaylist = null,
  }) {
    return _then(_$AddSongsToPlaylistImpl(
      null == playlistName
          ? _value.playlistName
          : playlistName // ignore: cast_nullable_to_non_nullable
              as String,
      null == addSongsToPlaylist
          ? _value.addSongsToPlaylist
          : addSongsToPlaylist // ignore: cast_nullable_to_non_nullable
              as SongsModel,
    ));
  }
}

/// @nodoc

class _$AddSongsToPlaylistImpl
    with DiagnosticableTreeMixin
    implements _AddSongsToPlaylist {
  const _$AddSongsToPlaylistImpl(this.playlistName, this.addSongsToPlaylist);

  @override
  final String playlistName;
  @override
  final SongsModel addSongsToPlaylist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.addSongsToPlaylist(playlistName: $playlistName, addSongsToPlaylist: $addSongsToPlaylist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.addSongsToPlaylist'))
      ..add(DiagnosticsProperty('playlistName', playlistName))
      ..add(DiagnosticsProperty('addSongsToPlaylist', addSongsToPlaylist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSongsToPlaylistImpl &&
            (identical(other.playlistName, playlistName) ||
                other.playlistName == playlistName) &&
            (identical(other.addSongsToPlaylist, addSongsToPlaylist) ||
                other.addSongsToPlaylist == addSongsToPlaylist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, playlistName, addSongsToPlaylist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSongsToPlaylistImplCopyWith<_$AddSongsToPlaylistImpl> get copyWith =>
      __$$AddSongsToPlaylistImplCopyWithImpl<_$AddSongsToPlaylistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return addSongsToPlaylist(playlistName, this.addSongsToPlaylist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return addSongsToPlaylist?.call(playlistName, this.addSongsToPlaylist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (addSongsToPlaylist != null) {
      return addSongsToPlaylist(playlistName, this.addSongsToPlaylist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return addSongsToPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return addSongsToPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (addSongsToPlaylist != null) {
      return addSongsToPlaylist(this);
    }
    return orElse();
  }
}

abstract class _AddSongsToPlaylist implements PlaylistEvent {
  const factory _AddSongsToPlaylist(
          final String playlistName, final SongsModel addSongsToPlaylist) =
      _$AddSongsToPlaylistImpl;

  String get playlistName;
  SongsModel get addSongsToPlaylist;
  @JsonKey(ignore: true)
  _$$AddSongsToPlaylistImplCopyWith<_$AddSongsToPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSongFromPlaylistImplCopyWith<$Res> {
  factory _$$DeleteSongFromPlaylistImplCopyWith(
          _$DeleteSongFromPlaylistImpl value,
          $Res Function(_$DeleteSongFromPlaylistImpl) then) =
      __$$DeleteSongFromPlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String playlistNameToDelete, SongsModel deleteSongsFromPlaylist});
}

/// @nodoc
class __$$DeleteSongFromPlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$DeleteSongFromPlaylistImpl>
    implements _$$DeleteSongFromPlaylistImplCopyWith<$Res> {
  __$$DeleteSongFromPlaylistImplCopyWithImpl(
      _$DeleteSongFromPlaylistImpl _value,
      $Res Function(_$DeleteSongFromPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistNameToDelete = null,
    Object? deleteSongsFromPlaylist = null,
  }) {
    return _then(_$DeleteSongFromPlaylistImpl(
      null == playlistNameToDelete
          ? _value.playlistNameToDelete
          : playlistNameToDelete // ignore: cast_nullable_to_non_nullable
              as String,
      null == deleteSongsFromPlaylist
          ? _value.deleteSongsFromPlaylist
          : deleteSongsFromPlaylist // ignore: cast_nullable_to_non_nullable
              as SongsModel,
    ));
  }
}

/// @nodoc

class _$DeleteSongFromPlaylistImpl
    with DiagnosticableTreeMixin
    implements _DeleteSongFromPlaylist {
  const _$DeleteSongFromPlaylistImpl(
      this.playlistNameToDelete, this.deleteSongsFromPlaylist);

  @override
  final String playlistNameToDelete;
  @override
  final SongsModel deleteSongsFromPlaylist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.deleteSongFromPlaylist(playlistNameToDelete: $playlistNameToDelete, deleteSongsFromPlaylist: $deleteSongsFromPlaylist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.deleteSongFromPlaylist'))
      ..add(DiagnosticsProperty('playlistNameToDelete', playlistNameToDelete))
      ..add(DiagnosticsProperty(
          'deleteSongsFromPlaylist', deleteSongsFromPlaylist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSongFromPlaylistImpl &&
            (identical(other.playlistNameToDelete, playlistNameToDelete) ||
                other.playlistNameToDelete == playlistNameToDelete) &&
            (identical(
                    other.deleteSongsFromPlaylist, deleteSongsFromPlaylist) ||
                other.deleteSongsFromPlaylist == deleteSongsFromPlaylist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, playlistNameToDelete, deleteSongsFromPlaylist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSongFromPlaylistImplCopyWith<_$DeleteSongFromPlaylistImpl>
      get copyWith => __$$DeleteSongFromPlaylistImplCopyWithImpl<
          _$DeleteSongFromPlaylistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return deleteSongFromPlaylist(
        playlistNameToDelete, deleteSongsFromPlaylist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return deleteSongFromPlaylist?.call(
        playlistNameToDelete, deleteSongsFromPlaylist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deleteSongFromPlaylist != null) {
      return deleteSongFromPlaylist(
          playlistNameToDelete, deleteSongsFromPlaylist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return deleteSongFromPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return deleteSongFromPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deleteSongFromPlaylist != null) {
      return deleteSongFromPlaylist(this);
    }
    return orElse();
  }
}

abstract class _DeleteSongFromPlaylist implements PlaylistEvent {
  const factory _DeleteSongFromPlaylist(final String playlistNameToDelete,
      final SongsModel deleteSongsFromPlaylist) = _$DeleteSongFromPlaylistImpl;

  String get playlistNameToDelete;
  SongsModel get deleteSongsFromPlaylist;
  @JsonKey(ignore: true)
  _$$DeleteSongFromPlaylistImplCopyWith<_$DeleteSongFromPlaylistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePlaylistImplCopyWith<$Res> {
  factory _$$DeletePlaylistImplCopyWith(_$DeletePlaylistImpl value,
          $Res Function(_$DeletePlaylistImpl) then) =
      __$$DeletePlaylistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaylistSongModel deletePlaylist});
}

/// @nodoc
class __$$DeletePlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistEventCopyWithImpl<$Res, _$DeletePlaylistImpl>
    implements _$$DeletePlaylistImplCopyWith<$Res> {
  __$$DeletePlaylistImplCopyWithImpl(
      _$DeletePlaylistImpl _value, $Res Function(_$DeletePlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletePlaylist = null,
  }) {
    return _then(_$DeletePlaylistImpl(
      null == deletePlaylist
          ? _value.deletePlaylist
          : deletePlaylist // ignore: cast_nullable_to_non_nullable
              as PlaylistSongModel,
    ));
  }
}

/// @nodoc

class _$DeletePlaylistImpl
    with DiagnosticableTreeMixin
    implements _DeletePlaylist {
  const _$DeletePlaylistImpl(this.deletePlaylist);

  @override
  final PlaylistSongModel deletePlaylist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistEvent.deletePlaylist(deletePlaylist: $deletePlaylist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistEvent.deletePlaylist'))
      ..add(DiagnosticsProperty('deletePlaylist', deletePlaylist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlaylistImpl &&
            (identical(other.deletePlaylist, deletePlaylist) ||
                other.deletePlaylist == deletePlaylist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deletePlaylist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      __$$DeletePlaylistImplCopyWithImpl<_$DeletePlaylistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaylist,
    required TResult Function(String playlistNameToGet) getPlaylistByName,
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(
            String playlistName, SongsModel addSongsToPlaylist)
        addSongsToPlaylist,
    required TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)
        deleteSongFromPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return deletePlaylist(this.deletePlaylist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToGet)? getPlaylistByName,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult? Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return deletePlaylist?.call(this.deletePlaylist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToGet)? getPlaylistByName,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(String playlistName, SongsModel addSongsToPlaylist)?
        addSongsToPlaylist,
    TResult Function(
            String playlistNameToDelete, SongsModel deleteSongsFromPlaylist)?
        deleteSongFromPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(this.deletePlaylist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_GetPlaylistByName value) getPlaylistByName,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_AddSongsToPlaylist value) addSongsToPlaylist,
    required TResult Function(_DeleteSongFromPlaylist value)
        deleteSongFromPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return deletePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult? Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return deletePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_GetPlaylistByName value)? getPlaylistByName,
    TResult Function(_CreatePlaylist value)? createPlaylist,
    TResult Function(_AddSongsToPlaylist value)? addSongsToPlaylist,
    TResult Function(_DeleteSongFromPlaylist value)? deleteSongFromPlaylist,
    TResult Function(_DeletePlaylist value)? deletePlaylist,
    required TResult orElse(),
  }) {
    if (deletePlaylist != null) {
      return deletePlaylist(this);
    }
    return orElse();
  }
}

abstract class _DeletePlaylist implements PlaylistEvent {
  const factory _DeletePlaylist(final PlaylistSongModel deletePlaylist) =
      _$DeletePlaylistImpl;

  PlaylistSongModel get deletePlaylist;
  @JsonKey(ignore: true)
  _$$DeletePlaylistImplCopyWith<_$DeletePlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistState {
  List<PlaylistSongModel> get playlist => throw _privateConstructorUsedError;
  List<PlaylistSongModel> get getPlaylistByName =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistStateCopyWith<PlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistStateCopyWith<$Res> {
  factory $PlaylistStateCopyWith(
          PlaylistState value, $Res Function(PlaylistState) then) =
      _$PlaylistStateCopyWithImpl<$Res, PlaylistState>;
  @useResult
  $Res call(
      {List<PlaylistSongModel> playlist,
      List<PlaylistSongModel> getPlaylistByName});
}

/// @nodoc
class _$PlaylistStateCopyWithImpl<$Res, $Val extends PlaylistState>
    implements $PlaylistStateCopyWith<$Res> {
  _$PlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? getPlaylistByName = null,
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongModel>,
      getPlaylistByName: null == getPlaylistByName
          ? _value.getPlaylistByName
          : getPlaylistByName // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistStateImplCopyWith<$Res>
    implements $PlaylistStateCopyWith<$Res> {
  factory _$$PlaylistStateImplCopyWith(
          _$PlaylistStateImpl value, $Res Function(_$PlaylistStateImpl) then) =
      __$$PlaylistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaylistSongModel> playlist,
      List<PlaylistSongModel> getPlaylistByName});
}

/// @nodoc
class __$$PlaylistStateImplCopyWithImpl<$Res>
    extends _$PlaylistStateCopyWithImpl<$Res, _$PlaylistStateImpl>
    implements _$$PlaylistStateImplCopyWith<$Res> {
  __$$PlaylistStateImplCopyWithImpl(
      _$PlaylistStateImpl _value, $Res Function(_$PlaylistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? getPlaylistByName = null,
  }) {
    return _then(_$PlaylistStateImpl(
      playlist: null == playlist
          ? _value._playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongModel>,
      getPlaylistByName: null == getPlaylistByName
          ? _value._getPlaylistByName
          : getPlaylistByName // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongModel>,
    ));
  }
}

/// @nodoc

class _$PlaylistStateImpl
    with DiagnosticableTreeMixin
    implements _PlaylistState {
  const _$PlaylistStateImpl(
      {required final List<PlaylistSongModel> playlist,
      required final List<PlaylistSongModel> getPlaylistByName})
      : _playlist = playlist,
        _getPlaylistByName = getPlaylistByName;

  final List<PlaylistSongModel> _playlist;
  @override
  List<PlaylistSongModel> get playlist {
    if (_playlist is EqualUnmodifiableListView) return _playlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlist);
  }

  final List<PlaylistSongModel> _getPlaylistByName;
  @override
  List<PlaylistSongModel> get getPlaylistByName {
    if (_getPlaylistByName is EqualUnmodifiableListView)
      return _getPlaylistByName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getPlaylistByName);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistState(playlist: $playlist, getPlaylistByName: $getPlaylistByName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistState'))
      ..add(DiagnosticsProperty('playlist', playlist))
      ..add(DiagnosticsProperty('getPlaylistByName', getPlaylistByName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistStateImpl &&
            const DeepCollectionEquality().equals(other._playlist, _playlist) &&
            const DeepCollectionEquality()
                .equals(other._getPlaylistByName, _getPlaylistByName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_playlist),
      const DeepCollectionEquality().hash(_getPlaylistByName));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      __$$PlaylistStateImplCopyWithImpl<_$PlaylistStateImpl>(this, _$identity);
}

abstract class _PlaylistState implements PlaylistState {
  const factory _PlaylistState(
          {required final List<PlaylistSongModel> playlist,
          required final List<PlaylistSongModel> getPlaylistByName}) =
      _$PlaylistStateImpl;

  @override
  List<PlaylistSongModel> get playlist;
  @override
  List<PlaylistSongModel> get getPlaylistByName;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

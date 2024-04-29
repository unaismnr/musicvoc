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
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToCreate)? createPlaylist,
    TResult Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaylist value) getPlaylist,
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_CreatePlaylist value)? createPlaylist,
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
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return getPlaylist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return getPlaylist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToCreate)? createPlaylist,
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
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return getPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return getPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_CreatePlaylist value)? createPlaylist,
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
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return createPlaylist(playlistNameToCreate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return createPlaylist?.call(playlistNameToCreate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToCreate)? createPlaylist,
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
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return createPlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return createPlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_CreatePlaylist value)? createPlaylist,
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
    required TResult Function(String playlistNameToCreate) createPlaylist,
    required TResult Function(PlaylistSongModel deletePlaylist) deletePlaylist,
  }) {
    return deletePlaylist(this.deletePlaylist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaylist,
    TResult? Function(String playlistNameToCreate)? createPlaylist,
    TResult? Function(PlaylistSongModel deletePlaylist)? deletePlaylist,
  }) {
    return deletePlaylist?.call(this.deletePlaylist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaylist,
    TResult Function(String playlistNameToCreate)? createPlaylist,
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
    required TResult Function(_CreatePlaylist value) createPlaylist,
    required TResult Function(_DeletePlaylist value) deletePlaylist,
  }) {
    return deletePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaylist value)? getPlaylist,
    TResult? Function(_CreatePlaylist value)? createPlaylist,
    TResult? Function(_DeletePlaylist value)? deletePlaylist,
  }) {
    return deletePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaylist value)? getPlaylist,
    TResult Function(_CreatePlaylist value)? createPlaylist,
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
  $Res call({List<PlaylistSongModel> playlist});
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
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<PlaylistSongModel> playlist});
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
  }) {
    return _then(_$PlaylistStateImpl(
      playlist: null == playlist
          ? _value._playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongModel>,
    ));
  }
}

/// @nodoc

class _$PlaylistStateImpl
    with DiagnosticableTreeMixin
    implements _PlaylistState {
  const _$PlaylistStateImpl({required final List<PlaylistSongModel> playlist})
      : _playlist = playlist;

  final List<PlaylistSongModel> _playlist;
  @override
  List<PlaylistSongModel> get playlist {
    if (_playlist is EqualUnmodifiableListView) return _playlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlist);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistState(playlist: $playlist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistState'))
      ..add(DiagnosticsProperty('playlist', playlist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistStateImpl &&
            const DeepCollectionEquality().equals(other._playlist, _playlist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      __$$PlaylistStateImplCopyWithImpl<_$PlaylistStateImpl>(this, _$identity);
}

abstract class _PlaylistState implements PlaylistState {
  const factory _PlaylistState(
      {required final List<PlaylistSongModel> playlist}) = _$PlaylistStateImpl;

  @override
  List<PlaylistSongModel> get playlist;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistStateImplCopyWith<_$PlaylistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

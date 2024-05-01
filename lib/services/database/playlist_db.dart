import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:musicvoc/domain/playlist_song_model/playlist_song_model.dart';
import 'package:musicvoc/domain/songs_model/songs_model.dart';

class PlaylistDb {
  static String playlistDbName = "PlaylistDb";
  late Box<PlaylistSongModel> playlistDb;

  PlaylistDb.internal();
  static PlaylistDb instance = PlaylistDb.internal();
  factory PlaylistDb() => instance;

  ValueNotifier<List<PlaylistSongModel>> playlistListner = ValueNotifier([]);

  Future<void> openBox() async {
    playlistDb = await Hive.openBox<PlaylistSongModel>(playlistDbName);
  }

  Future<List<PlaylistSongModel>> getPlaylist() async {
    await openBox();
    final songs = playlistDb.values.toList();
    return songs;
  }

  Future<List<PlaylistSongModel>> getPlaylistByName(String playlistName) async {
    await openBox();
    try {
      final playlist = playlistDb.get(playlistName) as PlaylistSongModel;

      return [playlist];
    } catch (e) {
      log('Error getting playlist by name: $e');
      return [];
    }
  }

  Future<void> createPlaylist(String playlistName) async {
    await openBox();
    final playlist = PlaylistSongModel(
      playlistName: playlistName,
      playlistSongs: [],
    );
    await playlistDb.put(playlistName, playlist);
    await getPlaylist();
  }

  Future<void> editPlaylist(String oldName, String newName) async {
    await openBox();
    final playlist = playlistDb.get(oldName);
    if (playlist != null) {
      await playlistDb.delete(oldName);
      playlist.playlistName = newName;
      playlistDb.put(newName, playlist);
    } else {
      log('Playlist not found');
    }
  }

  Future<void> addSongsToPlaylist(String playlistName, SongsModel song) async {
    await openBox();
    try {
      final existingPlaylist = playlistDb.values.firstWhere(
        (element) => element.playlistName == playlistName,
      );
      final isExistingSong = existingPlaylist.playlistSongs
          .where((element) => element.id == song.id)
          .isEmpty;
      if (isExistingSong == true) {
        existingPlaylist.playlistSongs.add(song);
        await playlistDb.put(playlistName, existingPlaylist);
      } else {
        final checkedSongIndex = existingPlaylist.playlistSongs.indexWhere(
          (element) => element.id == song.id,
        );
        existingPlaylist.playlistSongs.removeAt(checkedSongIndex);
        await playlistDb.put(playlistName, existingPlaylist);
        existingPlaylist.playlistSongs.add(song);
        await playlistDb.put(playlistName, existingPlaylist);
      }

      log('Songs added to playlist successfull');
    } catch (e) {
      log('Error adding playlist $e');
    }
  }

  Future<void> refreshPlaylistFolderSongs(String playlistName) async {
    final list = await getPlaylistByName(playlistName);
    playlistListner.value.clear();
    playlistListner.value.addAll(list);
    playlistListner.notifyListeners();
  }

  Future<void> deleteSongFromPlaylist(
      String playlistName, SongsModel songToDelete) async {
    await openBox();
    try {
      final existingPlaylist = playlistDb.values.firstWhere(
        (element) => element.playlistName == playlistName,
      );
      existingPlaylist.playlistSongs.remove(songToDelete);
      await playlistDb.put(playlistName, existingPlaylist);
      log('Song deleted from playlist successfully');
    } catch (e) {
      log('Error deleting song from playlist: $e');
    }
    await refreshPlaylistFolderSongs(playlistName);
  }

  Future<void> deletePlaylist(PlaylistSongModel song) async {
    await openBox();

    try {
      await playlistDb.delete(song.playlistName);
      log(
        'Playlist deleted successfully',
      );
    } catch (e) {
      log('Error deleting playlist $e');
    }
  }
}

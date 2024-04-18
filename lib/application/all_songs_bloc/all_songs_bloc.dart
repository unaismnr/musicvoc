import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:musicvoc/infrastructure/get_audios_repo.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

part 'all_songs_event.dart';
part 'all_songs_state.dart';
part 'all_songs_bloc.freezed.dart';

class AllSongsBloc extends Bloc<AllSongsEvent, AllSongsState> {
  AllSongsBloc() : super(AllSongsState.initial()) {
    on<_FetchSongs>((event, emit) async {
      final status = await Permission.storage.request();
      if (status.isGranted) {
        try {
          final songs = await GetAudiosRepo.getAudios();
          emit(state.copyWith(allSongs: songs));
        } catch (e) {
          log("All Songs Fetching Error: ${e.toString()}");
        }
      } else if (status.isDenied) {
        log('Permission Denied');
      }
    });
  }
}

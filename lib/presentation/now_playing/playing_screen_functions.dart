import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/adjust_volume_bloc/adjust_volume_bloc.dart';
import 'package:musicvoc/application/playlist_bloc/playlist_bloc.dart';
import 'package:musicvoc/controllers/adjust_speed_text.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';
import 'package:musicvoc/domain/song_model.dart';
import 'package:musicvoc/presentation/playlist/add_edit_playlist.dart';
import 'package:musicvoc/services/database/playlist_db.dart';

class PlayingScreenFunctions {
  final player = AssetsAudioPlayer.withId('0');

  final songSpeedTextController = Get.put(
    AdjustSpeedText(),
  );

  //SongSpeed
  void showSpeedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Adjust Speed',
          textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        content: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: 40.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                speedOnTapTile(context, 0.5),
                speedOnTapTile(context, 1.0),
                speedOnTapTile(context, 1.5),
                speedOnTapTile(context, 2.0),
              ],
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  Widget speedOnTapTile(BuildContext context, double newSpeed) {
    return TextButton(
      onPressed: () {
        player.setPlaySpeed(newSpeed);
        songSpeedTextController.speed.value = newSpeed;
        Get.back();
      },
      child: Text(
        '${newSpeed}x',
        style: TextStyle(
          color: songSpeedTextController.speed.value == newSpeed
              ? kSelectedTextColor
              : Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  //SongVolume
  void showVolumeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BlocBuilder<AdjustVolumeBloc, AdjustVolumeState>(
        builder: (context, state) {
          return AlertDialog(
            title: Column(
              children: [
                const Text(
                  'Adjust Volume',
                  textAlign: TextAlign.center,
                ),
                kHeight20,
                Text(
                  '${state.volume}',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            titleTextStyle: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge!.color,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: SizedBox(
              height: 20.h,
              child: SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: kMainBlueColor,
                  inactiveTrackColor: Theme.of(context).iconTheme.color,
                  thumbColor: kMainBlueColor,
                  overlayColor: const Color.fromARGB(78, 0, 85, 255),
                  activeTickMarkColor: Colors.transparent,
                  inactiveTickMarkColor: Colors.transparent,
                ),
                child: Slider(
                  value: state.volume,
                  onChanged: (newVolume) {
                    context.read<AdjustVolumeBloc>().add(
                          AdjustVolumeEvent.adjustVolume(
                            newVolume,
                          ),
                        );
                    player.setVolume(newVolume);
                  },
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //ModelBottomSheet
  static Future<dynamic> customBottomSheet(
      BuildContext context, SongsModel songsModel) {
    return showModalBottomSheet(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        context: context,
        builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  kHeight10,
                  Text(
                    'Add to Playlist',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight10,
                  BottomSheetCustomRow(
                      title: 'New',
                      iconOnPress: () {
                        Get.to(
                          () => AddEditPlaylist(),
                          transition: kTransitionRightToLeft,
                          duration: const Duration(),
                        );
                      }),
                  BlocBuilder<PlaylistBloc, PlaylistState>(
                    builder: (context, state) {
                      return Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final playlist = state.playlist[index];
                            return BottomSheetCustomRow(
                                title: playlist.playlistName,
                                iconOnPress: () {
                                  PlaylistDb.instance.addSongsToPlaylist(
                                    playlist.playlistName,
                                    songsModel,
                                  );
                                  PlaylistDb.instance
                                      .refreshPlaylistFolderSongs(
                                          playlist.playlistName);
                                  Get.back();
                                  toastMessege(context, 'Added Successfully');
                                });
                          },
                          itemCount: state.playlist.length,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ));
  }
}

class BottomSheetCustomRow extends StatelessWidget {
  final String title;
  final VoidCallback iconOnPress;
  const BottomSheetCustomRow({
    super.key,
    required this.title,
    required this.iconOnPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: iconOnPress,
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}

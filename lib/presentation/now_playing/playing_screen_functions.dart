import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/application/adjust_volume_bloc/adjust_volume_bloc.dart';
import 'package:musicvoc/controllers/adjust_speed_text.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:musicvoc/core/other_consts.dart';

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
          color: kWhiteColor,
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
        backgroundColor: kBlackColor,
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
              : kWhiteColor,
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
                    color: kWhiteColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            titleTextStyle: TextStyle(
              color: kWhiteColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: kBlackColor,
            content: SizedBox(
              height: 20.h,
              child: SliderTheme(
                data: const SliderThemeData(
                  activeTrackColor: kMainBlueColor,
                  inactiveTrackColor: kWhiteColor,
                  thumbColor: kMainBlueColor,
                  overlayColor: Color.fromARGB(78, 0, 85, 255),
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
}

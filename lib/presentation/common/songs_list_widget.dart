import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongsListStaticWidgets {
  static Widget container(Widget child, BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.w),
            topRight: Radius.circular(20.w),
          ),
          color: Theme.of(context).colorScheme.background,
        ),
        child: child,
      );

  static Widget listTile(
    BuildContext context,
    String title,
    String description,
    Color color,
    bool buttonDisplay,
    VoidCallback butttonOnpPress,
    VoidCallback onTap,
    int id,
  ) =>
      ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: kMainBlueColor,
          child: QueryArtworkWidget(
            id: id,
            type: ArtworkType.AUDIO,
            nullArtworkWidget: const Icon(
              Icons.music_note,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                color: color,
              ),
            ),
          ],
        ),
        trailing: buttonDisplay == false
            ? IconButton(
                onPressed: butttonOnpPress,
                icon: const Icon(
                  Icons.more_vert,
                ),
              )
            : IconButton(
                onPressed: butttonOnpPress,
                icon: const Icon(
                  Icons.delete,
                ),
              ),
        onTap: onTap,
      );
}

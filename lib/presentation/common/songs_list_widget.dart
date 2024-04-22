import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';
import 'package:on_audio_query/on_audio_query.dart';

Widget songsListWidget(
  String title,
  String description,
  VoidCallback butttonOnpPress,
  int itemCount,
  VoidCallback onTap,
  bool buttonDisplay,
  BuildContext context,
) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.w),
        topRight: Radius.circular(20.w),
      ),
      color: Theme.of(context).colorScheme.background,
    ),
    child: ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          radius: 20.w,
          backgroundColor: kMainBlueColor,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 14.sp,
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
      ),
      itemCount: itemCount,
    ),
  );
}

class SongsListStaticWidgets {
  Widget container(Widget child, BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
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

  Widget listTile(
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
          radius: 23.w,
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
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11.sp,
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

  static TextStyle descriptionTextStyle() => TextStyle(
        fontSize: 14.sp,
      );
}

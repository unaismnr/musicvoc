import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';

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
    child: ListView.separated(
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
      separatorBuilder: (context, index) => Divider(
        indent: 72.w,
        color: Theme.of(context).colorScheme.secondary,
      ),
      itemCount: itemCount,
    ),
  );
}

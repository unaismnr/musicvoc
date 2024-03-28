import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musicvoc/core/const_colors.dart';

Widget songsListWidget(
  String title,
  String description,
  VoidCallback moreButtton,
  int itemCount,
  VoidCallback onTap,
) {
  return ListView.separated(
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
      trailing: IconButton(
        onPressed: moreButtton,
        icon: const Icon(
          Icons.more_vert,
        ),
      ),
      onTap: onTap,
    ),
    separatorBuilder: (context, index) => Divider(
      indent: 72.w,
      color: Theme.of(context).colorScheme.secondary,
    ),
    itemCount: itemCount,
  );
}

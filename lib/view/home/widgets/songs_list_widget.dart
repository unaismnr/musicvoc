import 'package:flutter/material.dart';
import 'package:musicvoc/core/const_colors.dart';

Widget songsListWidget(
    String title, String description, VoidCallback moreButtton, int itemCount) {
  return ListView.separated(
    itemBuilder: (context, index) => ListTile(
      leading: const CircleAvatar(
        radius: 20,
        backgroundColor: kMainBlueColor,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
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
    ),
    separatorBuilder: (context, index) => Divider(
      indent: 72,
      color: Theme.of(context).colorScheme.secondary,
    ),
    itemCount: itemCount,
  );
}

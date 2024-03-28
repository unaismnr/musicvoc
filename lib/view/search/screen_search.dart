import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:musicvoc/view/common/songs_list_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20.sp,
          ),
        ),
        title: CupertinoSearchTextField(
          prefixIcon: const SizedBox(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
      ),
      body: songsListWidget(
        'Songs Name Here',
        'Movie',
        () {},
        20,
        () {},
        true,
      ),
    );
  }
}

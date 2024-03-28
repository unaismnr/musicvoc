import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppbar(VoidCallback onPress, String title) {
  return AppBar(
    leading: IconButton(
      onPressed: onPress,
      icon: Icon(
        Icons.arrow_back_ios_new,
        size: 20.sp,
      ),
    ),
    title: Text(title),
    centerTitle: true,
  );
}

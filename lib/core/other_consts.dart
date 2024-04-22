import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:musicvoc/core/const_colors.dart';

const kAppLogo = 'assets/musicvoclogo.png';
final kHeight20 = SizedBox(height: 20.h);
final kHeight10 = SizedBox(height: 10.h);
const kTransitionDownToUp = Transition.downToUp;
const kTransitionRightToLeft = Transition.rightToLeft;

ToastFuture toastMessege(BuildContext context, String msg) {
  return showToast(
    msg,
    context: context,
    animation: StyledToastAnimation.scale,
    reverseAnimation: StyledToastAnimation.fade,
    position: StyledToastPosition.center,
    animDuration: const Duration(seconds: 1),
    duration: const Duration(seconds: 2),
    curve: Curves.elasticOut,
    reverseCurve: Curves.fastEaseInToSlowEaseOut,
    backgroundColor: kBlackColor,
    borderRadius: BorderRadius.circular(12.w),
    textPadding: EdgeInsets.symmetric(
      horizontal: 13.w,
      vertical: 4.h,
    ),
    textAlign: TextAlign.center,
  );
}

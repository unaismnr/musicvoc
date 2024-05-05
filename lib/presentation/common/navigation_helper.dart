import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class NavigationHelper {
  //PushRightToLeft
  static void pushRightToLeft(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageTransition(
        child: page,
        type: PageTransitionType.rightToLeft,
        duration: const Duration(milliseconds: 1),
      ),
    );
  }

  //PushRightToLeft
  static void pushBottomToTop(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageTransition(
        child: page,
        type: PageTransitionType.bottomToTop,
        duration: const Duration(milliseconds: 1),
      ),
    );
  }

  //PushReplacemenRightToLeft
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(
      PageTransition(
        child: page,
        type: PageTransitionType.rightToLeft,
        duration: const Duration(milliseconds: 1),
      ),
    );
  }
}

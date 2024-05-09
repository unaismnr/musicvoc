import 'package:flutter/material.dart';

class AdjustSpeedTextController extends ChangeNotifier {
  var speed = 1.0;
  void changeText(var text) {
    speed = text;
    notifyListeners();
  }
}

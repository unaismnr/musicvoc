import 'package:get/get.dart';

class AdjustSpeedText extends GetxController {
  var speed = 1.0.obs;

  void changeText(var text) {
    speed.value = text;
  }
}

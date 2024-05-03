import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChangeController extends GetxController {
  RxBool isDarkTheme = false.obs;

  @override
  void onInit() {
    super.onInit();
    _loadThemePreference();
  }

  void _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkTheme.value = prefs.getBool('isDarkTheme') ?? false;
  }

  void changeTheme() async {
    isDarkTheme.value = !isDarkTheme.value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkTheme', isDarkTheme.value);
    Get.changeThemeMode(
      isDarkTheme.value ? ThemeMode.light : ThemeMode.dark,
    );
  }
}

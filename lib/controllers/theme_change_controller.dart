import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeChangeController themeController = ThemeChangeController();

class ThemeChangeController extends ChangeNotifier {
  bool _isDarkTheme = false;

  bool get isDarkTheme => _isDarkTheme;

  ThemeChangeController() {
    loadTheme();
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    notifyListeners();
  }

  void changeTheme() async {
    _isDarkTheme = !_isDarkTheme;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkTheme', _isDarkTheme);
    notifyListeners();
  }
}

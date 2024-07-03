import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/dark_mode.dart';
import 'package:food_delivery_app/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themedata = lightMode;

  ThemeData get themeData => _themedata;

  bool get isDarkMode => _themedata == darkMode;

  set themeData(ThemeData themeData) {
    _themedata = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themedata == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

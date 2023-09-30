import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;
  String locale = "en";

  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }

  changeLanguage(String langCode) {
    locale = langCode;
    notifyListeners();
  }
}

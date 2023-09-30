import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const String _themeKey = 'theme';

  static Future<SharedPreferences> get _preferences async =>
      await SharedPreferences.getInstance();

  static Future<void> setTheme(ThemeMode themeMode) async {
    final SharedPreferences prefs = await _preferences;
    prefs.setInt(_themeKey, themeMode.index);
  }

  static Future<ThemeMode> getTheme() async {
    final SharedPreferences prefs = await _preferences;
    final int themeModeIndex = prefs.getInt(_themeKey) ?? 0;
    return ThemeMode.values[themeModeIndex];
  }
}

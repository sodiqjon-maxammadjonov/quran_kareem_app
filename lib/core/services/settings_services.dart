import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static const String _themeKey = 'app_theme';

  ThemeMode getThemeMode() {
    final themeString = _prefs.getString(_themeKey) ?? 'system';
    try {
      return ThemeMode.values.firstWhere((e) => e.name == themeString);
    } catch (e) {
      return ThemeMode.system; // Har ehtimolga qarshi
    }
  }

  Future<void> saveThemeMode(ThemeMode theme) async {
    await _prefs.setString(_themeKey, theme.name);
  }
}
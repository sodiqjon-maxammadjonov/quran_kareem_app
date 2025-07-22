import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // --- Theme ---
  static const String _themeKey = 'app_theme';

  ThemeMode getTheme() {
    final themeString = _prefs.getString(_themeKey) ?? 'system';
    return ThemeMode.values.firstWhere((e) => e.name == themeString);
  }

  Future<void> saveTheme(ThemeMode theme) async {
    await _prefs.setString(_themeKey, theme.name);
  }

  // --- Language ---
  static const String _languageKey = 'app_language';

  Locale getLanguage() {
    final languageCode = _prefs.getString(_languageKey) ?? 'uz'; 
    return Locale(languageCode);
  }

  Future<void> saveLanguage(Locale locale) async {
    await _prefs.setString(_languageKey, locale.languageCode);
  }
}
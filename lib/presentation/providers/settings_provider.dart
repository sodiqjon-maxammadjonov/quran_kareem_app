
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/services/settings_services.dart';

@immutable
class AppSettings {
  final ThemeMode themeMode;
  final Locale locale;

  const AppSettings({required this.themeMode, required this.locale});
}

// StateNotifier
class SettingsNotifier extends StateNotifier<AppSettings> {
  final SettingsService _settingsService;

  SettingsNotifier(this._settingsService)
      : super(AppSettings(
    themeMode: _settingsService.getTheme(),
    locale: _settingsService.getLanguage(),
  ));

  Future<void> changeTheme(ThemeMode newMode) async {
    await _settingsService.saveTheme(newMode);
    state = AppSettings(themeMode: newMode, locale: state.locale);
  }

  Future<void> changeLanguage(Locale newLocale) async {
    await _settingsService.saveLanguage(newLocale);
    state = AppSettings(themeMode: state.themeMode, locale: newLocale);
  }
}

final settingsServiceProvider = Provider<SettingsService>((ref) {
  throw UnimplementedError("SettingsService was not initialized");
});

final settingsProvider = StateNotifierProvider<SettingsNotifier, AppSettings>((ref) {
  final settingsService = ref.watch(settingsServiceProvider);
  return SettingsNotifier(settingsService);
});
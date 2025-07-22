import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/services/settings_services.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final SettingsService _settingsService;

  ThemeNotifier(this._settingsService) : super(_settingsService.getThemeMode());

  // Mavzuni o'zgartirish va saqlash
  Future<void> changeTheme(ThemeMode newMode) async {
    if (state == newMode) return;

    await _settingsService.saveThemeMode(newMode);
    state = newMode;
  }
}
final settingsServiceProvider = Provider<SettingsService>((ref) {
  throw UnimplementedError("SettingsService was not initialized");
});

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  final settingsService = ref.watch(settingsServiceProvider);
  return ThemeNotifier(settingsService);
});
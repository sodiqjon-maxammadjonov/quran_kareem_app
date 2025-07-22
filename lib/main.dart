import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/core/themes/app_theme.dart';
import 'package:quran_kareem/presentation/providers/settings_provider.dart';
import 'package:quran_kareem/presentation/screens/splash_screen.dart';

import 'core/services/settings_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SettingsService'ni ishga tushirish
  final settingsService = SettingsService();
  await settingsService.init();

  runApp(
    ProviderScope(
      overrides: [
        settingsServiceProvider.overrideWithValue(settingsService),
      ],
      child: const QuranApp(),
    ),
  );
}

class QuranApp extends ConsumerWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Qur\'on Kareem',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,

      home: const SplashScreen(),
    );
  }
}
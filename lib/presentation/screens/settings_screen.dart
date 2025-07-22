import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/presentation/providers/settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeProvider);
    final themeNotifier = ref.read(themeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sozlamalar"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text("Mavzu", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          SegmentedButton<ThemeMode>(
            segments: const <ButtonSegment<ThemeMode>>[
              ButtonSegment<ThemeMode>(
                  value: ThemeMode.light, label: Text("Yorug'"), icon: Icon(Icons.wb_sunny)),
              ButtonSegment<ThemeMode>(
                  value: ThemeMode.dark, label: Text("Qorong'u"), icon: Icon(Icons.nightlight_round)),
              ButtonSegment<ThemeMode>(
                  value: ThemeMode.system, label: Text("Tizim"), icon: Icon(Icons.settings_system_daydream)),
            ],
            selected: {currentTheme},
            onSelectionChanged: (Set<ThemeMode> newSelection) {
              themeNotifier.changeTheme(newSelection.first);
            },
          ),
        ],
      ),
    );
  }
}
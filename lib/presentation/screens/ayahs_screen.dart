import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/presentation/widgets/ayah_card_widget.dart';
import 'package:quran_kareem/presentation/widgets/ayah_list_loading_shimmer.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';

import '../providers/surah_provider.dart';

class AyahsScreen extends ConsumerWidget {
  final SurahEntity surah;

  const AyahsScreen({super.key, required this.surah});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Sura raqami orqali '.family' provayderini kuzatish
    final ayahsAsyncValue = ref.watch(ayahsProvider(surah.number));
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(surah.uzbekName),
        // fon gradienti uchun shaffof
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: theme.brightness == Brightness.light
                ? [AppColors.lightGradientStart, AppColors.lightGradientEnd]
                : [AppColors.darkGradientStart, AppColors.darkGradientEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // Holatlarni boshqarish
        child: ayahsAsyncValue.when(
          loading: () => const AyahListLoadingShimmer(),
          error: (err, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Xatolik yuz berdi:\n$err", textAlign: TextAlign.center),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    // Xatolikni tozalab, provayderni qayta chaqirish
                    ref.invalidate(ayahsProvider);
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text("Qayta urinish"),
                ),
              ],
            ),
          ),
          data: (ayahs) {
            return ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, kToolbarHeight + 40, 16, 16),
              itemCount: ayahs.length,
              itemBuilder: (context, index) {
                final ayah = ayahs[index];
                return AyahCardWidget(ayah: ayah);
              },
            );
          },
        ),
      ),
    );
  }
}
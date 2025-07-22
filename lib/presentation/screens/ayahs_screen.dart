// lib/presentation/screens/ayahs_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/presentation/widgets/ayah_card_widget.dart';
import 'package:quran_kareem/presentation/widgets/ayah_list_loading_shimmer.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';
import 'package:quran_kareem/presentation/widgets/bottom_player_bar.dart';

import '../providers/surah_provider.dart'; // Pleyer paneli importi

class AyahsScreen extends ConsumerWidget {
  final SurahEntity surah;

  const AyahsScreen({super.key, required this.surah});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Sura raqami orqali '.family' provayderini kuzatish
    final ayahsAsyncValue = ref.watch(ayahsProvider(surah.number));
    final theme = Theme.of(context);

    return Scaffold(
      // Body'ni AppBar orqasiga o'tkazib yuborish fon uchun kerak
      extendBodyBehindAppBar: true,

      // Butun ekran endi `Stack` bilan o'ralgan
      body: Stack(
        children: [
          // 1-qatlam: Orqa fon gradienti
          Container(
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
          ),

          // 2-qatlam: Asosiy kontent (AppBar va Oyatlar ro'yxati)
          // SafeArea status bar va boshqa to'siqlardan saqlaydi
          SafeArea(
            child: Column(
              children: [
                // AppBar
                AppBar(
                  title: Text(surah.uzbekName),
                  backgroundColor: Colors.transparent, // fon ustida shaffof
                  elevation: 0,
                  scrolledUnderElevation: 0,
                ),
                // Oyatlar ro'yxatini egallaydigan qism
                Expanded(
                  child: ayahsAsyncValue.when(
                    loading: () => const AyahListLoadingShimmer(),
                    error: (err, stack) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ma'lumotlarni yuklashda xatolik yuz berdi.\nIltimos, internet aloqasini tekshiring va qayta urinib ko'ring.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton.icon(
                              onPressed: () {
                                // Xatolikni tozalab, provayderni qayta chaqirish
                                ref.invalidate(ayahsProvider(surah.number));
                              },
                              icon: const Icon(Icons.refresh),
                              label: const Text("Qayta urinish"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    data: (ayahs) {
                      return ListView.builder(
                        // Endi padding faqat gorizontal, chunki AppBar
                        // va BottomPlayerBar o'z joyiga ega.
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: ayahs.length,
                        itemBuilder: (context, index) {
                          final ayah = ayahs[index];
                          return AyahCardWidget(ayah: ayah);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // 3-qatlam: Ekran pastida joylashgan pleyer paneli
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomPlayerBar(),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/presentation/widgets/ayah_card_widget.dart';
import 'package:quran_kareem/presentation/widgets/ayah_list_loading_shimmer.dart';
import 'package:quran_kareem/core/constants/app_colors.dart';
import 'package:quran_kareem/presentation/widgets/bottom_player_bar.dart';
import 'package:quran_kareem/presentation/widgets/error_display_widget.dart';
import '../providers/surah_provider.dart';

class AyahsScreen extends ConsumerWidget {
  final SurahEntity surah;

  const AyahsScreen({super.key, required this.surah});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ayahsAsyncValue = ref.watch(ayahsProvider(surah.number));
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
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

          SafeArea(
            child: Column(
              children: [
                // AppBar
                AppBar(
                  title: Text(surah.uzbekName),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                ),
                Expanded(
                  child: ayahsAsyncValue.when(
                    loading: () => const AyahListLoadingShimmer(),

                    // YANGILANGAN ERROR BLOKI: Endi maxsus vidjetimizni ishlatamiz
                    error: (error, stackTrace) => ErrorDisplayWidget(
                      // Bizning `NetworkException` klasslarimizdan keladigan tushunarli matn
                      errorMessage: error.toString(),
                      onRetry: () {
                        // Provayder holatini tozalab, qayta ma'lumot yuklashni boshlaymiz
                        ref.invalidate(ayahsProvider(surah.number));
                      },
                    ),

                    data: (ayahs) {
                      return ListView.builder(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 90),
                        itemCount: ayahs.length,
                        itemBuilder: (context, index) {
                          return AyahCardWidget(ayah: ayahs[index]);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

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
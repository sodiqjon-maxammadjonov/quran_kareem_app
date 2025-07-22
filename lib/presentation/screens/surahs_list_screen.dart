import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:quran_kareem/presentation/widgets/surah_card_widget.dart';
import 'package:quran_kareem/presentation/widgets/surah_list_loading_shimmer.dart';

import '../providers/search_provider.dart';
import '../providers/surah_provider.dart';
import '../widgets/search_fiels_widget.dart';

class SurahsListScreen extends ConsumerWidget {
  const SurahsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final surahsAsyncValue = ref.watch(allSurahsProvider);
    final searchQuery = ref.watch(searchQueryProvider);

    return  Column(
        children: [
          const SearchFieldWidget(),
      
          // Asosiy kontent qismi
          Expanded(
            child: surahsAsyncValue.when(
              // Ma'lumotlar yuklanayotganda shimmer effektini ko'rsatamiz
              loading: () => const SurahListLoadingShimmer(),
      
              // Xatolik yuz berganda
              error: (err, stack) => Center(child: Text('Xatolik: $err')),
      
              // Ma'lumotlar muvaffaqiyatli yuklanganda
              data: (surahs) {
                // Qidiruv bo'yicha filtrlangan ro'yxat
                final filteredSurahs = surahs.where((surah) {
                  final query = searchQuery.toLowerCase();
                  return surah.uzbekName.toLowerCase().contains(query) ||
                      surah.englishName.toLowerCase().contains(query) ||
                      surah.number.toString().contains(query);
                }).toList();
      
                if (filteredSurahs.isEmpty) {
                  return const Center(child: Text("Hech narsa topilmadi"));
                }
      
                // Ro'yxatni animatsiya bilan ko'rsatamiz
                return AnimationLimiter(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    itemCount: filteredSurahs.length,
                    itemBuilder: (context, index) {
                      final surah = filteredSurahs[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6.0),
                              child: SurahCardWidget(surah: surah),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
    );
  }
}
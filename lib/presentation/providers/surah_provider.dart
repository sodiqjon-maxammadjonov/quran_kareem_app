// lib/presentation/providers/surah_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/domain/usecases/get_all_surahs_usecase.dart';
import 'package:quran_kareem/domain/usecases/get_ayahs_usecase.dart';
import 'package:quran_kareem/presentation/providers/repository_provider.dart';

final getAllSurahsUseCaseProvider = Provider<GetAllSurahsUseCase>((ref) {
  return GetAllSurahsUseCase(ref.watch(quranRepositoryProvider));
});

final getAyahsUseCaseProvider = Provider<GetAyahsUseCase>((ref) {
  return GetAyahsUseCase(ref.watch(quranRepositoryProvider));
});

final allSurahsProvider = FutureProvider<List<SurahEntity>>((ref) {
  final usecase = ref.watch(getAllSurahsUseCaseProvider);
  return usecase.call();
});

final ayahsProvider =
    FutureProvider.family<List<AyahEntity>, int>((ref, surahNumber) {
  final usecase = ref.watch(getAyahsUseCaseProvider);
  return usecase.call(surahNumber);
});

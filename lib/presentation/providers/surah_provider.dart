// lib/presentation/providers/surah_providers.dart

import 'dart:async';
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
  ref.keepAlive();
  final usecase = ref.watch(getAllSurahsUseCaseProvider);
  return usecase.call();
});

class AyahsNotifier extends FamilyAsyncNotifier<List<AyahEntity>, int> {
  @override
  FutureOr<List<AyahEntity>> build(int arg) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onDispose(() => timer?.cancel());
    ref.onCancel(
        () => timer = Timer(const Duration(minutes: 5), () => link.close()));
    ref.onResume(() => timer?.cancel());
    final usecase = ref.read(getAyahsUseCaseProvider);
    return usecase.call(arg);
  }
}

final ayahsProvider =
    AsyncNotifierProvider.family<AyahsNotifier, List<AyahEntity>, int>(
  AyahsNotifier.new,
);

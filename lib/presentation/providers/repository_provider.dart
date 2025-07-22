// lib/presentation/providers/repository_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/data/datasources/local_datasource.dart';
import 'package:quran_kareem/data/datasources/remote_datasource.dart';
import 'package:quran_kareem/data/repositories/quran_repository_impl.dart';
import 'package:quran_kareem/domain/repositories/quran_repository.dart';

final quranRepositoryProvider = Provider<IQuranRepository>((ref) {
  final localDataSource = ref.watch(localDataSourceProvider);
  final remoteDataSource = ref.watch(remoteDataSourceProvider);

  return QuranRepositoryImpl(
    localDataSource: localDataSource,
    remoteDataSource: remoteDataSource,
  );
});
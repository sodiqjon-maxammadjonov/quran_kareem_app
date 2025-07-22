import 'package:quran_kareem/data/datasources/local_datasource.dart';
import 'package:quran_kareem/data/datasources/remote_datasource.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';
import 'package:quran_kareem/domain/repositories/quran_repository.dart';

class QuranRepositoryImpl implements IQuranRepository {
  final ILocalDataSource localDataSource;
  final IRemoteDataSource remoteDataSource;

  QuranRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<List<SurahEntity>> getAllSurahs() async {
    final surahModels = await localDataSource.getAllSurahs();
    return surahModels;
  }

  @override
  Future<List<AyahEntity>> getAyahs(int surahNumber) async {
    final ayahModels = await remoteDataSource.getAyahs(surahNumber);
    return ayahModels;
  }
}

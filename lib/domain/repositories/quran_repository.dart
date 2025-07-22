import 'package:quran_kareem/domain/entities/ayah_entity.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';

abstract class IQuranRepository {

  Future<List<SurahEntity>> getAllSurahs();

  Future<List<AyahEntity>> getAyahs(int surahNumber);
}
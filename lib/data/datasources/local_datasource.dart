import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_kareem/data/models/surah/surah_model.dart';


abstract class ILocalDataSource {
  Future<List<SurahModel>> getAllSurahs();
}

class LocalDataSourceImpl implements ILocalDataSource {

  @override
  Future<List<SurahModel>> getAllSurahs() async {
    try {
      final jsonString = await rootBundle.loadString('assets/json/surahs.json');

      final jsonMap = json.decode(jsonString);

      final surahsList = SurahsListModel.fromJson(jsonMap);

      return surahsList.surahs;
    } catch (e) {
      throw Exception('Suralarni mahalliy manbadan o\'qishda xatolik: $e');
    }
  }
}

final localDataSourceProvider = Provider<ILocalDataSource>((ref) {
  return LocalDataSourceImpl();
});
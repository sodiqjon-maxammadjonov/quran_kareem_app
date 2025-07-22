import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_kareem/domain/entities/surah_entity.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
class SurahsListModel with _$SurahsListModel {
  const factory SurahsListModel({
    required List<SurahModel> surahs,
  }) = _SurahsListModel;

  factory SurahsListModel.fromJson(Map<String, dynamic> json) =>
      _$SurahsListModelFromJson(json);
}

@freezed
class SurahModel with _$SurahModel implements SurahEntity {
  const factory SurahModel({
    required int number,
    required String name,
    required String englishName,
    required String uzbekName,
    required int ayahCount,
    required String revelationType,
    required String revelationPlace,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
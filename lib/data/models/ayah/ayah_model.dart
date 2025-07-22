// lib/data/models/ayah/ayah_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';

part 'ayah_model.freezed.dart';

part 'ayah_model.g.dart';

@freezed
class EditionAyahsModel with _$EditionAyahsModel {
  const factory EditionAyahsModel({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
    required List<AyahModel> ayahs,
    required EditionModel edition,
  }) = _EditionAyahsModel;

  factory EditionAyahsModel.fromJson(Map<String, dynamic> json) =>
      _$EditionAyahsModelFromJson(json);
}

@freezed
class EditionModel with _$EditionModel {
  const factory EditionModel({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
    String? direction,
  }) = _EditionModel;

  factory EditionModel.fromJson(Map<String, dynamic> json) =>
      _$EditionModelFromJson(json);
}

@freezed
class AyahModel with _$AyahModel implements AyahEntity {
  const factory AyahModel({
    // Bizga kerakli maydonlar:
    required int numberInSurah,
    required String text,
    @JsonKey(name: "audio") String? audioUrl,
    required int number,
    @Default([]) List<String> audioSecondary,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizbQuarter,
    required dynamic sajda,
    @Default(null) String? translation,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}

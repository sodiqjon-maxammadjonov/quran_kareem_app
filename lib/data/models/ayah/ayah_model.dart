import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_kareem/domain/entities/ayah_entity.dart';

part 'ayah_model.freezed.dart';
part 'ayah_model.g.dart';

@freezed
class EditionAyahsModel with _$EditionAyahsModel {
  @JsonSerializable(disallowUnrecognizedKeys: false)
  const factory EditionAyahsModel({
    required int number,
    required String name,
    required String englishName,
    required List<AyahModel> ayahs,
  }) = _EditionAyahsModel;

  factory EditionAyahsModel.fromJson(Map<String, dynamic> json) => _$EditionAyahsModelFromJson(json);
}

@freezed
class AyahModel with _$AyahModel implements AyahEntity {
  @JsonSerializable(disallowUnrecognizedKeys: false, fieldRename: FieldRename.none)
  const factory AyahModel({
    required int numberInSurah,
    required String text,
    @JsonKey(name: "audio") required String audioUrl,
    @Default(null) String? translation,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}
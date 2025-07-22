// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditionAyahsModelImpl _$$EditionAyahsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditionAyahsModelImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => AyahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditionAyahsModelImplToJson(
        _$EditionAyahsModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'ayahs': instance.ayahs,
    };

_$AyahModelImpl _$$AyahModelImplFromJson(Map<String, dynamic> json) =>
    _$AyahModelImpl(
      numberInSurah: (json['numberInSurah'] as num).toInt(),
      text: json['text'] as String,
      audioUrl: json['audio'] as String,
      translation: json['translation'] as String? ?? null,
    );

Map<String, dynamic> _$$AyahModelImplToJson(_$AyahModelImpl instance) =>
    <String, dynamic>{
      'numberInSurah': instance.numberInSurah,
      'text': instance.text,
      'audio': instance.audioUrl,
      'translation': instance.translation,
    };

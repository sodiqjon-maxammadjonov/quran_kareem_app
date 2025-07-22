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
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      numberOfAyahs: (json['numberOfAyahs'] as num).toInt(),
      ayahs: (json['ayahs'] as List<dynamic>)
          .map((e) => AyahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition: EditionModel.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditionAyahsModelImplToJson(
        _$EditionAyahsModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
      'edition': instance.edition,
    };

_$EditionModelImpl _$$EditionModelImplFromJson(Map<String, dynamic> json) =>
    _$EditionModelImpl(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
      direction: json['direction'] as String?,
    );

Map<String, dynamic> _$$EditionModelImplToJson(_$EditionModelImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
      'direction': instance.direction,
    };

_$AyahModelImpl _$$AyahModelImplFromJson(Map<String, dynamic> json) =>
    _$AyahModelImpl(
      numberInSurah: (json['numberInSurah'] as num).toInt(),
      text: json['text'] as String,
      audioUrl: json['audio'] as String?,
      number: (json['number'] as num).toInt(),
      audioSecondary: (json['audioSecondary'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      juz: (json['juz'] as num).toInt(),
      manzil: (json['manzil'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      ruku: (json['ruku'] as num).toInt(),
      hizbQuarter: (json['hizbQuarter'] as num).toInt(),
      sajda: json['sajda'],
      translation: json['translation'] as String? ?? null,
    );

Map<String, dynamic> _$$AyahModelImplToJson(_$AyahModelImpl instance) =>
    <String, dynamic>{
      'numberInSurah': instance.numberInSurah,
      'text': instance.text,
      'audio': instance.audioUrl,
      'number': instance.number,
      'audioSecondary': instance.audioSecondary,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
      'translation': instance.translation,
    };

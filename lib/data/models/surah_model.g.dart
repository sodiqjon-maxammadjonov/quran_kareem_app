// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahsListModelImpl _$$SurahsListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahsListModelImpl(
      surahs: (json['surahs'] as List<dynamic>)
          .map((e) => SurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahsListModelImplToJson(
        _$SurahsListModelImpl instance) =>
    <String, dynamic>{
      'surahs': instance.surahs,
    };

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      uzbekName: json['uzbekName'] as String,
      ayahCount: (json['ayahCount'] as num).toInt(),
      revelationType: json['revelationType'] as String,
      revelationPlace: json['revelationPlace'] as String,
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'uzbekName': instance.uzbekName,
      'ayahCount': instance.ayahCount,
      'revelationType': instance.revelationType,
      'revelationPlace': instance.revelationPlace,
    };

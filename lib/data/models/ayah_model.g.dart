// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

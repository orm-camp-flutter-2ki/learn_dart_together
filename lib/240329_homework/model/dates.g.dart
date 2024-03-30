// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dates _$DatesFromJson(Map<String, dynamic> json) => Dates(
      maximum: DateTime.parse(json['maximum'] as String),
      minimum: DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$DatesToJson(Dates instance) => <String, dynamic>{
      'maximum': instance.maximum.toIso8601String(),
      'minimum': instance.minimum.toIso8601String(),
    };

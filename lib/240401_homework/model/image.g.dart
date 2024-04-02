// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      total: json['total'] as int,
      totalHits: json['totalHits'] as int,
      hits: (json['hits'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };

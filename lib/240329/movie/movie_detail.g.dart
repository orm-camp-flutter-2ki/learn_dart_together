// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      originalTitle: json['original_title'] as String,
      status: json['status'] as String,
      adult: json['adult'] as bool,
      runtime: json['runtime'] as int,
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'original_title': instance.originalTitle,
      'status': instance.status,
      'adult': instance.adult,
      'runtime': instance.runtime,
    };

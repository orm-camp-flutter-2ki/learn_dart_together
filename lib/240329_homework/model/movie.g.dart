// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      dates: Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as num,
      results: MovieInfo.fromJson(json['results'] as Map<String, dynamic>),
      totalPages: json['total_pages'] as num,
      totalResults: json['total_results'] as num,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'dates': instance.dates.toJson(),
      'page': instance.page,
      'results': instance.results.toJson(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

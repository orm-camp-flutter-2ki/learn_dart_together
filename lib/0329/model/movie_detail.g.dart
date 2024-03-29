// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      title: json['title'] as String,
      runtime: json['runtime'] as num,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'title': instance.title,
      'runtime': instance.runtime,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };

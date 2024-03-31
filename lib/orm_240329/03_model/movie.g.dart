// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      page: json['page'] as num?,
      totalPages: json['totalPages'] as num?,
      totalResults: json['totalResults'] as num?,
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genreIds'] as List<dynamic>?)?.map((e) => e as num).toList(),
      id: json['id'] as num?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: json['popularity'] as num?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: json['vote_average'] as num?,
      voteCount: json['vote_count'] as num?,
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate?.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

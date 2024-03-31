// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movieDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      adult: json['adult'] as bool,
      backdropPath: json['backdropPath'] as String,
      budget: json['budget'] as num,
      homepage: json['homepage'] as String,
      id: json['id'] as num,
      imdbId: json['imdbId'] as String,
      originalLanguage: json['originalLanguage'] as String,
      originalTitle: json['originalTitle'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as num,
      posterPath: json['posterPath'] as String,
      releaseDate: json['releaseDate'] as String,
      revenue: json['revenue'] as num,
      runtime: json['runtime'] as num,
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['voteAverage'] as num,
      voteCount: json['voteCount'] as num,
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'budget': instance.budget,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdbId': instance.imdbId,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };

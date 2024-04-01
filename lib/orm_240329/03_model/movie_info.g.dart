// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInfo _$MovieInfoFromJson(Map<String, dynamic> json) => MovieInfo(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_Ids'] as List<dynamic>?)?.map((e) => e as num).toList(),
      id: json['id'] as num?,
      originalLanguage: json['original_Languge'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: json['popularity'] as num?,
      posterPath: json['poster_Path'] as String?,
      releaseDate: json['release_Date'] == null
          ? null
          : DateTime.parse(json['release_Date'] as String),
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: json['vote_Average'] as num?,
      voteCount: json['vote_Count'] as num?,
    );

Map<String, dynamic> _$MovieInfoToJson(MovieInfo instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_Ids': instance.genreIds,
      'id': instance.id,
      'original_Languge': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_Path': instance.posterPath,
      'release_Date': instance.releaseDate?.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'vote_Average': instance.voteAverage,
      'vote_Count': instance.voteCount,
    };

import 'package:json_annotation/json_annotation.dart';

part 'movie_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieInfo {
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'genre_Ids')
  final List<num>? genreIds;
  final num? id;
  @JsonKey(name: 'original_Languge')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  final num? popularity;
  @JsonKey(name: 'poster_Path')
  final String? posterPath;
  @JsonKey(name: 'release_Date')
  final DateTime? releaseDate;
  final String? title;
  final bool? video;
  @JsonKey(name: 'vote_Average')
  final num? voteAverage;
  @JsonKey(name: 'vote_Count')
  final num? voteCount;

  MovieInfo({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieInfoToJson(this);

  @override
  String toString() {
    return 'MovieInfo{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieInfo &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          genreIds == other.genreIds &&
          id == other.id &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          releaseDate == other.releaseDate &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      id.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      releaseDate.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;

  MovieInfo copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    int? voteCount,
  }) {
    return MovieInfo(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}

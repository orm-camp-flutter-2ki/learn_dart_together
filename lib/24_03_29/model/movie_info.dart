import 'package:collection/collection.dart';

class MovieInfo {
  final bool adult;
  final String backdropPath;
  final List<num> genreIds;
  final num id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;

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

  MovieInfo.copyWith({
    required MovieInfo origin,
    bool? adult,
    String? backdropPath,
    List<num>? genreIds,
    num? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount,
  })  : adult = adult ?? origin.adult,
        backdropPath = backdropPath ?? origin.backdropPath,
        genreIds = genreIds ?? origin.genreIds,
        id = id ?? origin.id,
        originalLanguage = originalLanguage ?? origin.originalLanguage,
        originalTitle = originalTitle ?? origin.originalTitle,
        overview = overview ?? origin.overview,
        popularity = popularity ?? origin.popularity,
        posterPath = posterPath ?? origin.posterPath,
        releaseDate = releaseDate ?? origin.releaseDate,
        title = title ?? origin.title,
        video = video ?? origin.video,
        voteAverage = voteAverage ?? origin.voteAverage,
        voteCount = voteCount ?? origin.voteCount;

  MovieInfo.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdropPath = json['backdropPath'],
        genreIds = json['genreIds'],
        id = json['id'],
        originalLanguage = json['originalLanguage'],
        originalTitle = json['originalTitle'],
        overview = json['overview'],
        popularity = json['popularity'],
        posterPath = json['posterPath'],
        releaseDate = json['releaseDate'],
        title = json['title'],
        video = json['video'],
        voteAverage = json['voteAverage'],
        voteCount = json['voteCount'];

  Map<String, dynamic> toJson() => {
    'adult': adult,
    'backdropPath': backdropPath,
    'genreIds': genreIds,
    'id': id,
    'originalLanguage': originalLanguage,
    'originalTitle': originalTitle,
    'overview': overview,
    'popularity': popularity,
    'posterPath': posterPath,
    'releaseDate': releaseDate,
    'title': title,
    'video': video,
    'voteAverage': voteAverage,
    'voteCount': voteCount
  };

  @override
  String toString() {
    return 'Result{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MovieInfo &&
              runtimeType == other.runtimeType &&
              adult == other.adult &&
              backdropPath == other.backdropPath &&
              ListEquality().equals(genreIds, other.genreIds) &&
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
      genreIds.fold(0, (previousValue, element) => previousValue ^ element.hashCode) ^
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
}
import 'package:json_annotation/json_annotation.dart';

part 'movieDetail.g.dart';

// 클래스를 받는 필드 제거....
// 클래스도 하려면 수기로 해야하나 ???

@JsonSerializable(explicitToJson: true)
class MovieDetail {
  final bool adult;
  final String backdropPath;

  final num budget;

  final String homepage;
  final num id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;

  final String releaseDate;
  final num revenue;
  final num runtime;

  final String status;
  final String tagline;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);

  const MovieDetail({
    required this.adult,
    required this.backdropPath,
    required this.budget,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetail &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          budget == other.budget &&
          homepage == other.homepage &&
          id == other.id &&
          imdbId == other.imdbId &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          releaseDate == other.releaseDate &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          status == other.status &&
          tagline == other.tagline &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      budget.hashCode ^
      homepage.hashCode ^
      id.hashCode ^
      imdbId.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      releaseDate.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      status.hashCode ^
      tagline.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;
}

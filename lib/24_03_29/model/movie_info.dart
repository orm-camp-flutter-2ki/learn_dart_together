import 'package:json_annotation/json_annotation.dart';

part 'movie_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieInfo {
  bool adult;
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'genre_ids')
  List<num> genreIds;
  num id;
  @JsonKey(name: 'original_language')
  String originalLanguage;
  @JsonKey(name: 'original_title')
  String originalTitle;
  String overview;
  num popularity;
  @JsonKey(name: 'poster_path')
  String posterPath;
  @JsonKey(name: 'release_date')
  String releaseDate;
  String title;
  bool video;
  @JsonKey(name: 'vote_average')
  num voteAverage;
  @JsonKey(name: 'vote_count')
  num voteCount;

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
}

import 'package:json_annotation/json_annotation.dart';

part 'movie_info.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieInfo {
  final String title;

  // @JsonKey(name: 'release_date')
  final String releaseDate;
  final String overview;
  final double voteAverage;

  const MovieInfo({
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.voteAverage,
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieInfoToJson(this);

  @override
  String toString() {
    return 'MovieInfo{title: $title, releaseDate: $releaseDate, overview: $overview, voteAverage: $voteAverage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieInfo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          releaseDate == other.releaseDate &&
          overview == other.overview &&
          voteAverage == other.voteAverage;

  @override
  int get hashCode =>
      title.hashCode ^
      releaseDate.hashCode ^
      overview.hashCode ^
      voteAverage.hashCode;
}

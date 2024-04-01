import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final String title;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  const Movie({
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

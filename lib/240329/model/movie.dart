import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'movie_info.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final Dates dates;
  final num page;
  final List<MovieInfo> movieInfoList;
  final num totalPages;
  final num totalResults;

  const Movie({
    required this.dates,
    required this.page,
    required this.movieInfoList,
    required this.totalPages,
    required this.totalResults,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

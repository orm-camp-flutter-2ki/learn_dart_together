import 'package:json_annotation/json_annotation.dart';
import 'package:learn_dart_together/240329_homework/model/movieInfo.dart';

import 'dates.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final Dates dates;
  final num page;
  final MovieInfo results;
  @JsonKey(name: 'total_pages')
  final num totalPages;
  @JsonKey(name: 'total_results')
  final num totalResults;

  const Movie({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  Movie copyWith({
    Dates? dates,
    num? page,
    MovieInfo? results,
    num? totalPages,
    num? totalResults,
  }) {
    return Movie(
      dates: dates ?? this.dates,
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          dates == other.dates &&
          page == other.page &&
          results == other.results &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults;

  @override
  int get hashCode =>
      dates.hashCode ^
      page.hashCode ^
      results.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;

  @override
  String toString() {
    return 'Movie{dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}';
  }

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}

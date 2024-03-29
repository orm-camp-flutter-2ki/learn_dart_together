import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';
import 'package:learn_dart_together/24_03_29/model/movie.dart';

class MovieInfo {
  final Date dates;
  final num page;
  final List<Movie> results;
  final num totalPages;
  final num totalResults;

  MovieInfo({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  String toString() {
    return 'MovieInfo{dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieInfo &&
          runtimeType == other.runtimeType &&
          dates == other.dates &&
          page == other.page &&
          results.equals(other.results) &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults;

  @override
  int get hashCode =>
      dates.hashCode ^
      page.hashCode ^
      results
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element) ^
      totalPages.hashCode ^
      totalResults.hashCode;
}

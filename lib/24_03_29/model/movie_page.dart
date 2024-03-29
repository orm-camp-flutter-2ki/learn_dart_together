import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_21/movie.dart';
import 'package:learn_dart_together/24_03_29/model/date.dart';

class MoviePage {
  final Date dates;
  final num page;
  final List<Movie> results;
  final num totalPages;
  final num totalResults;

  MoviePage({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  String toString() {
    return 'MoviePage{dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoviePage &&
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

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_29/dto/upcoming_movies_dto.dart';

import 'movie_info.dart';

class UpcomingMovies {
  final Dates dates;
  final int page;
  final List<MovieInfo> results;
  final int totalPages;
  final int totalResults;

//<editor-fold desc="Data Methods">
  const UpcomingMovies({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UpcomingMovies &&
          runtimeType == other.runtimeType &&
          dates == other.dates &&
          page == other.page &&
          results.equals(other.results) &&
          totalPages == other.totalPages &&
          totalResults == other.totalResults);

  @override
  int get hashCode =>
      dates.hashCode ^
      page.hashCode ^
      results.hashCode ^
      totalPages.hashCode ^
      totalResults.hashCode;

  @override
  String toString() {
    return 'UpcomingMovies{ dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults,}';
  }

  UpcomingMovies copyWith({
    Dates? dates,
    int? page,
    List<MovieInfo>? results,
    int? totalPages,
    int? totalResults,
  }) {
    return UpcomingMovies(
      dates: dates ?? this.dates,
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
    );
  }

//</editor-fold>
}

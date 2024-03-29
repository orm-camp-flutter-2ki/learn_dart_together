import 'package:learn_dart_together/24_03_29/dto/upcoming_movies_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/upcoming_movies.dart';

extension UpcomingMoviesDtoToUpcomingMovie on UpcomingMoviesDto {
  UpcomingMovies toUpcomingMovies() {
    return UpcomingMovies(
      dates: dates ?? Dates(),
      page: page?.toInt() ?? -1,
      results: results?.map((e) => e.toMovieInfo()).toList() ?? [],
      totalPages: totalPages?.toInt() ?? -1,
      totalResults: totalResults?.toInt() ?? -1,
    );
  }
}

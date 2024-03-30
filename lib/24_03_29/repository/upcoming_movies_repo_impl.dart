import 'package:learn_dart_together/24_03_29/data_source/upcoming_movies_api.dart';
import 'package:learn_dart_together/24_03_29/mapper/upcoming_movies_mapper.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/model/upcoming_movies.dart';
import 'package:learn_dart_together/24_03_29/repository/upcoming_movies_repository.dart';

class UpcomingMoviesRepoImpl implements UpcomingMoviesRepository {
  final UpcomingMoviesApi _api;

  UpcomingMoviesRepoImpl(this._api);

  @override
  Future<UpcomingMovies> getUpcomingMovies() async {
    final upcomingMoviesDto = await _api.getUpcomingMovies();

    return upcomingMoviesDto.toUpcomingMovies();
  }

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    // upcoming movie dto
    final upcomingMoviesDto = await _api.getUpcomingMovies();

    // upcoming movie dto mapping
    final upcomingMovies = upcomingMoviesDto.toUpcomingMovies();

    // upcoming movie results -> list movieInfo dto
    final movieInfoList = upcomingMovies.results;

    return movieInfoList;
  }
}

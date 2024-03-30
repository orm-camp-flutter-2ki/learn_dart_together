import 'package:learn_dart_together/24_03_29/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/model/upcoming_movies.dart';

abstract interface class UpcomingMoviesRepository {
  Future<UpcomingMovies> getUpcomingMovies();

  Future<List<MovieInfo>> getMovieInfoList();
}

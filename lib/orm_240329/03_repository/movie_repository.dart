import '../03_model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieList();
}

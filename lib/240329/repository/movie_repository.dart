import '../model/movie.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();
}

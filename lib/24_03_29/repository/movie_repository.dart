import '../model/movie_detail/movie.dart';

abstract interface class MovieRepository {
  Future<Movie> getMovie(int id);
}

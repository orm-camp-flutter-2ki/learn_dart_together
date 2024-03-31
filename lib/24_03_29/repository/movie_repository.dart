import '../model/movie_detail/movie.dart';
import '../model/movie_info.dart';

abstract interface class MovieRepository {
  Future<Movie> getMovie(int id);
}

import '../model/movie_2.dart';

abstract class MovieRepository {
  Future<Movie> getMovie(int id);
}

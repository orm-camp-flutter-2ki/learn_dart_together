import '../model/movie.dart';
import '../model/movie_detail.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();

  Future<MovieDetail> getMovieDetail(int id);
}

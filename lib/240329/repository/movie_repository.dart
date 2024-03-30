import '../model/movie.dart';
import '../model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
  Future<MovieInfo> getMovie(int id);
}
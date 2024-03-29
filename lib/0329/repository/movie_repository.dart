import '../model/movie_detail.dart';
import '../model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMoviesInfoList();
  Future<MovieDetail> getMovieDetail(int id);
}

import '../model/movie_detail.dart';
import '../result.dart';

abstract interface class MovieRepository {
  Future<Result<MovieDetail>> getMovieDetail(int id);
}

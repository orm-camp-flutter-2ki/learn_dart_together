import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final _api = MovieApi();

  @override
  Future<Movie> getMovie(int id) {
    return _api.getMasks(id);
  }

  @override
  Future<List<Movie>> getMovieInfoList() {
    return _api.getMovies();
  }
}

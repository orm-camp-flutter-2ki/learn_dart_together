import '../data_resource/movie_2_api.dart';
import '../model/movie_2.dart';
import 'movie_2_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _movieApi = MovieApi();

  @override
  Future<Movie> getMovie(int id) {
    return _movieApi.fetchMovie(id);
  }
}

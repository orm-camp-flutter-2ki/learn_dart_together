import 'package:learn_dart_together/24_03_29/repository/movie_repository.dart';

import '../data_source/movie_api.dart';
import '../model/movie.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi api;

  MovieRepositoryImpl(this.api);

  Future<Movie> getMovieDetail(int id) async {
    Movie movie = await api.getMovieDetail(id);
    return movie;
  }
}

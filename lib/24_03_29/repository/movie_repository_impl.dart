import 'package:learn_dart_together/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail/movie.dart';

import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl({MovieApi? api}) : _api = api ?? MovieApi();

  @override
  Future<Movie> getMovie(int id) async {
    final movieDetail = await _api.getMovie(id);

    return movieDetail;
  }
}

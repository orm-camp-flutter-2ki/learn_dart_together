import 'package:learn_dart_together/orm_240329/03_data_source/movie_detail_api.dart';
import 'package:learn_dart_together/orm_240329/03_model/movieSearch/movie_detail.dart';
import 'package:learn_dart_together/orm_240329/03_repository/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailApi _api;

  MovieDetailRepositoryImpl(MovieDetailApi? api)
      : _api = api ?? MovieDetailApi();

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    try {
      final movieId = await _api.getMovieDetail(id);
      // print(movieId);
      return movieId;
    } catch (e) {
      throw ['error'];
    }
  }
}

// void main() {
//   MovieDetailRepositoryImpl(MovieDetailApi()).getMovieDetail(634492);
// }

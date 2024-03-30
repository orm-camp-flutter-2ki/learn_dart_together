import 'package:learn_dart_together/240329/data_source/movie_detail_api.dart';
import 'package:learn_dart_together/240329/model/movie/movie.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  // api 주입받아서 사용
  final MovieDetailApi _api;
  // 생성자
  MovieRepositoryImpl({MovieDetailApi? api}) : _api = api ?? MovieDetailApi(967847); // 교체하기 쉬움

  @override
  Future<Movie> getMovieDetail() async {
    final movies = await _api.getMovieDetail();
    return movies;
  }
}

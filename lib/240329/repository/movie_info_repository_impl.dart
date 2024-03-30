import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie_info/movie_info.dart';
import 'package:learn_dart_together/240329/repository/movie_info_repository.dart';

class MovieInfoRepositoryImpl implements MovieInfoRepository {
  // api 주입받아서 사용
  final MovieApi _api;
  // 생성자
  MovieInfoRepositoryImpl(MovieApi? api) : _api = api ?? MovieApi(); // 교체하기 쉬움

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    final movies = await _api.getMovieInfoList();
    return movies;
  }
}

main() async {
  final aa = await MovieInfoRepositoryImpl(MovieApi()).getMovieInfoList();
  print(aa);
}
